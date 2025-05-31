
function compressed_img = fft_image_compress(image_path)
% Compresses a color image using 2D FFT on each RGB channel.
% INPUT:
%   image_path  - path to the image file
% OUTPUT:
%   compressed_img - compressed RGB image (uint8)

    % Step 1: Read image
    img = imread(image_path);
    img = im2double(img);  % Scale to [0,1]
    keep_ratio=0.05;
    % Initialize compressed image
    compressed_img = zeros(size(img));
    
    % Step 2: Process each channel separately
    for c = 1:3
        channel = img(:,:,c);
        F = fft2(channel);
        F_shifted = fftshift(F);
        
        mag = abs(F_shifted);
        threshold = quantile(mag(:), 1 - keep_ratio);
        
        F_compressed = F_shifted .* (mag >= threshold);
        
        F_ishifted = ifftshift(F_compressed);
        channel_compressed = real(ifft2(F_ishifted));
        
        % Normalize to [0,1]
        compressed_img(:,:,c) = mat2gray(channel_compressed);
    end
    
    % Convert to uint8 for display
    compressed_img = im2uint8(compressed_img);

    % Step 3: Show result
    figure;
    subplot(1,2,1); imshow(imread(image_path)); title('Original Image');
    subplot(1,2,2); imshow(compressed_img);
    % title(['Compressed RGB (', num2str(100-(keep_ratio*100)), '%)']);

    % Save output figure
exportgraphics(gcf, 'compressed_output.png', 'Resolution', 300);
end
