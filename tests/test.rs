use first_app::add;

#[test]
fn test_addition() {
    assert_eq!(add(2, 2), 4);
}

#[test]
fn test_addition_negative() {
    assert_ne!(add(2, 2), 5);
}