//
//  C46_Filter.swift
//  demo
//
//  Created by Eric on 8/18/23.
//

import SwiftUI
import CoreImage
import CoreImage.CIFilterBuiltins


struct C46_Filter: View {
    let image: Image

    init() {
        let uiImage = UIImage(named: "CoolCat")!
        let filteredUIImage = C46_Filter.applySepiaFilter(to: uiImage)
        image = Image(uiImage: filteredUIImage)
    }
    
    var body: some View {
        image.resizable()
            .scaledToFit()
    }
    
    static func applySepiaFilter(to inputImage: UIImage) -> UIImage {
        guard let ciImage = CIImage(image: inputImage) else {
            return inputImage
        }
        let filter = CIFilter.sepiaTone()
        filter.inputImage = ciImage
        filter.intensity = 1.0
        
        let context = CIContext()
        // Create a CGImage from the CIImage
        guard let outputCIImage = filter.outputImage,
              let cgImage = context.createCGImage(outputCIImage, from: outputCIImage.extent) else {
          return inputImage
        }

        // Create a UIImage from the CGImage
        let outputUIImage = UIImage(cgImage: cgImage)

        return outputUIImage
    }
}

struct C46_Filter_Previews: PreviewProvider {
    static var previews: some View {
        C46_Filter()
    }
}
