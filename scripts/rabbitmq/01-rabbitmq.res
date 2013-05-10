resource rabbitmq {
  device /dev/drbd0;
  disk /dev/sdb;
  meta-disk internal;

  on eric {
    address 192.168.133.115:7788;
  }
  on frank {
    address 192.168.133.116:7788;
  }
}
