import { tv, VariantProps } from "tailwind-variants";

import { ComponentProps } from "react";

const badge = tv({
    base: 'inline-block py-1 px-2 rounded-full font-semibold text-[0.625rem]',

    variants: {}
})

interface BadgeProps
    extends ComponentProps<'span'>,
        VariantProps<typeof badge> {}

export function Badge({...props}: BadgeProps) {
    return <span {...props} />
}