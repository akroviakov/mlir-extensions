builtin.module(
    cse
    gpu.module(xetile-init-duplicate
        xetile-blocking
        convert-xetile-to-xegpu)
    cse
    imex-convert-gpu-to-spirv{enable-vc-intrinsic=true}
    cse
    spirv.module(spirv-lower-abi-attrs
             spirv-update-vce)
    func.func(llvm-request-c-wrappers)
    serialize-spirv
    convert-vector-to-scf
    convert-gpu-to-gpux
    convert-scf-to-cf
    convert-cf-to-llvm
    convert-vector-to-llvm
    convert-arith-to-llvm
    convert-func-to-llvm
    convert-math-to-llvm
    convert-index-to-llvm
    convert-gpux-to-llvm
    expand-strided-metadata
    lower-affine
    finalize-memref-to-llvm
    reconcile-unrealized-casts)
