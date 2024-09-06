// Copyright (c) 2024, Tri Dao.
// Splitting the different head dimensions to different files to speed up compilation.

#include "flash_fwd_launch_template.h"

template<>
void run_mha_fwd_gqa_<cutlass::half_t, 64>(Flash_fwd_params &params, cudaStream_t stream) {
    run_mha_fwd_hdim64_gqa_decoding<cutlass::half_t>(params, stream);
}
