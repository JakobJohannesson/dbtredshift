with payments as (
    select
        id as payment_id,
        order_id as order_id,
        paymentmethod as payment_method,
        status,
        amount / 100 as amount,
        created as created_at
    from dev.stripe.payment
)

select * from payments