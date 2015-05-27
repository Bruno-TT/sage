from sage.libs.ntl.ntl_lzz_p_decl cimport zz_p_c
from sage.libs.ntl.ntl_ZZ_decl cimport ZZ_c

cdef extern from "sage/libs/ntl/ntl_wrap.cpp":
    #### zz_pX_c
    ctypedef struct zz_pX_c "struct zz_pX":
        void *rep
        void (* SetMaxLength)(long n)

    void zz_pX_construct "Construct<zz_pX>"(void *mem)
    void zz_pX_destruct "Destruct<zz_pX>"(zz_pX_c *mem)
    char* zz_pX_repr(zz_pX_c* x)
    void zz_pX_SetCoeff_long "SetCoeff"(zz_pX_c x, long i, long a)
    zz_p_c zz_pX_GetCoeff "coeff"(zz_pX_c x, long i)
    void zz_pX_add "add"(zz_pX_c x, zz_pX_c a, zz_pX_c b)
    void zz_pX_sub "sub"(zz_pX_c x, zz_pX_c a, zz_pX_c b)
    void zz_pX_mul "mul"(zz_pX_c x, zz_pX_c a, zz_pX_c b)
    void zz_pX_rmul "mul"(zz_pX_c x, zz_pX_c a, long b)
    void zz_pX_lmul "mul"(zz_pX_c x, long a, zz_pX_c b)
    long zz_pX_div "div"(zz_pX_c x, zz_pX_c a, zz_pX_c b)
    long zz_pX_divide "divide"(zz_pX_c x, zz_pX_c a, zz_pX_c b)
    void zz_pX_mod "rem"(zz_pX_c x, zz_pX_c a, zz_pX_c b)
    void zz_pX_divrem "DivRem"(zz_pX_c q, zz_pX_c r, zz_pX_c a, zz_pX_c b)
    void zz_pX_LeftShift "LeftShift"(zz_pX_c x, zz_pX_c a, long b)
    void zz_pX_RightShift "RightShift"(zz_pX_c x, zz_pX_c a, long b)
    void zz_pX_negate "NTL::negate"(zz_pX_c x, zz_pX_c a)
    zz_p_c zz_pX_LeadCoeff "LeadCoeff"(zz_pX_c x)
    zz_p_c zz_pX_ConstTerm "ConstTerm" (zz_pX_c x)
    void zz_pX_negate "NTL::negate"(zz_pX_c x, zz_pX_c a)
    void zz_pX_trunc "trunc"(zz_pX_c x, zz_pX_c a, long n) ## x = a % X^n
    void zz_pX_MulTrunc "MulTrunc"(zz_pX_c x, zz_pX_c a, zz_pX_c b, long n)
    void zz_pX_SqrTrunc "SqrTrunc"(zz_pX_c x, zz_pX_c a, long n)
    void zz_pX_InvTrunc "InvTrunc"(zz_pX_c x, zz_pX_c a, long n)
    void zz_pX_sqr "sqr"(zz_pX_c x, zz_pX_c a)
    void zz_pX_power "NTL::power"(zz_pX_c x, zz_pX_c a, long e)
    void zz_pX_clear "clear"(zz_pX_c x)
    void zz_pX_SetX "SetX"(zz_pX_c x)
    bint zz_pX_IsX "IsX"(zz_pX_c x)
    bint zz_pX_IsZero "IsZero"(zz_pX_c x)
    bint zz_pX_IsOne "IsOne"(zz_pX_c x)
    long zz_pX_deg "deg"(zz_pX_c x)
    zz_pX_c zz_pX_zero "zz_pX::zero"()
    void zz_pX_diff "diff"(zz_pX_c x, zz_pX_c a)
    void zz_pX_reverse "reverse"(zz_pX_c x, zz_pX_c a)
    void zz_pX_eval "eval" (zz_p_c fa, zz_pX_c f, zz_p_c a)
    void zz_pX_MakeMonic "MakeMonic"(zz_pX_c x)

    ctypedef struct zz_pX_Modulus_c "struct zz_pXModulus":
        zz_pX_c (* val) ( )

    zz_pX_Modulus_c* zz_pX_Modulus_new "New<zz_pXModulus>"()
    zz_pX_Modulus_c* zz_pX_Modulus_construct "Construct<zz_pXModulus>"(void *mem)
    void zz_pX_Modulus_destruct "Destruct<zz_pXModulus>"(zz_pX_Modulus_c *mem)
    void zz_pX_Modulus_delete "Delete<zz_pXModulus>"(zz_pX_Modulus_c *mem)
    void zz_pX_Modulus_from_str "_from_str<zz_pXModulus>"(zz_pX_Modulus_c* dest, char* s)
    void zz_pX_Modulus_build "build"(zz_pX_Modulus_c F, zz_pX_c f) # MUST be called before using the modulus
    long zz_pX_Modulus_deg "deg"(zz_pX_Modulus_c F)

    void zz_pX_MulMod_pre "MulMod"(zz_pX_c x, zz_pX_c a, zz_pX_c b, zz_pX_Modulus_c F)
    void zz_pX_SqrMod_pre "SqrMod"(zz_pX_c x, zz_pX_c a, zz_pX_Modulus_c F)
    void zz_pX_PowerMod_pre "PowerMod"(zz_pX_c x, zz_pX_c a, ZZ_c e, zz_pX_Modulus_c F)
    void zz_pX_PowerMod_long_pre "PowerMod"(zz_pX_c x, zz_pX_c a, long e, zz_pX_Modulus_c F)
    void zz_pX_PowerXMod_pre "PowerXMod"(zz_pX_c x, ZZ_c e, zz_pX_Modulus_c F)
    void zz_pX_PowerXMod_long_pre "PowerXMod"(zz_pX_c x, long e, zz_pX_Modulus_c F)
    void zz_pX_PowerXPlusAMod_pre "PowerXPlusAMod"(zz_pX_c x, zz_p_c a, ZZ_c e, zz_pX_Modulus_c F)
    void zz_pX_PowerXPlusAMod_long_pre "PowerXPlusAMod"(zz_pX_c x, zz_p_c a, long e, zz_pX_Modulus_c F)
    void zz_pX_rem_pre "rem"(zz_pX_c x, zz_pX_c a, zz_pX_Modulus_c F)
    void zz_pX_DivRem_pre "DivRem"(zz_pX_c q, zz_pX_c r, zz_pX_c a, zz_pX_Modulus_c F)
    void zz_pX_div_pre "div"(zz_pX_c q, zz_pX_c a, zz_pX_Modulus_c F)
    void zz_pX_InvMod_pre "InvMod"(zz_pX_c x, zz_pX_c a, zz_pX_Modulus_c F)

    long NTL_SP_BOUND
    bint NTL_zz_pX_DOUBLE_EQUALS(zz_pX_c x, zz_pX_c y)
