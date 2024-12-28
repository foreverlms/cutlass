#include "cute/numeric/numeric_types.hpp"
#include "cutlass/integer_subbyte.h"
#include "test_for_lms.h"

namespace demo {
void subyte_int4() {
    constexpr int NumBits = 4;
    // auto a = int4b_t{2};
    auto a = float(-(1 << (NumBits - 1)));
    auto b = float((1 << (NumBits - 1)) - 1);
    printf("%f, %f\n", a, b);
    auto c = float(cutlass::platform::numeric_limits<int4b_t>::lowest());
    printf("c: %f\n", c);
}
} // namespace demo