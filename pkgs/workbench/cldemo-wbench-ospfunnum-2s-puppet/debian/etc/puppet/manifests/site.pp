node 'leaf1.lab.local' {
    $int_enabled = true
    $int_loopback = '10.2.1.1'
    $int_loopback6 = '2001:db8:2:2000::1'
    $int_unnumbered = [ 'swp1', 'swp2', 'swp3', 'swp4' ]
    $int_bridges = {
        br0 => { 'address' => '10.4.1.1', 'netmask' => '255.255.255.128', 'address6' => '2001:db8:2:4001::1/64',  'members' => ['swp30','swp31','swp32','swp33'] },
        br1 => { 'address' => '10.4.1.129', 'netmask' => '255.255.255.128', 'address6' => '2001:db8:2:4002::1/64', 'members' => ['swp34','swp35','swp36','swp37'] }
    }
    include ospfunnum::role::switchbase
}

node 'leaf2.lab.local' {
    $int_enabled = true
    $int_loopback = '10.2.1.2'
    $int_loopback6 = '2001:db8:2:2000::2'
    $int_unnumbered = [ 'swp1', 'swp2', 'swp3', 'swp4' ]
    $int_bridges = {
        br0 => { 'address' => '10.4.2.1', 'netmask' => '255.255.255.128', 'address6' => '2001:db8:2:4003::1/64', 'members' => ['swp30','swp31','swp32','swp33'] },
        br1 => { 'address' => '10.4.2.129', 'netmask' => '255.255.255.128', 'address6' => '2001:db8:2:4004::1/64', 'members' => ['swp34','swp35','swp36','swp37'] }
    }
    include ospfunnum::role::switchbase
}
