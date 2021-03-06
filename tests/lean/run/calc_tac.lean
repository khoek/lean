axiom addz {A : Type} [has_add A] [has_zero A] : ∀ a : A, a + 0 = a
axiom addc {A : Type} [has_add A] : ∀ a b : A, a + b = b + a

example {A : Type} [has_add A] [has_zero A] [has_one A] (a b c : A) : b = 0 → a + b + c = c + a :=
assume h,
calc a + b + c = a + 0 + c : by rw h
           ... = a + c     : by rw addz
           ... = c + a     : by rw addc
