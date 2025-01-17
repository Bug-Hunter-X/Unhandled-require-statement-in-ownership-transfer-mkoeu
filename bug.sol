function transferOwnership(newOwner) {
  require(newOwner != address(0), "Ownable: new owner is the zero address");
  // Transfer the ownership.  We use emit here to emit the event OwnershipTransferred
  emit OwnershipTransferred(_owner, newOwner);
  _owner = newOwner;
}