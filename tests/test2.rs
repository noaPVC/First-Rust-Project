#[path = "common/common.rs"]
mod common;
use common::utils::helper;

#[test]
fn test_function_inside_seperate_file() {
    let helper_variable = helper();
    assert_eq!(42, helper_variable)
}