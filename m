X-GM-THRID: 6341988616413118464
X-Received: by 10.129.89.5 with SMTP id n5mr105935ywb.23.1476810052742;
        Tue, 18 Oct 2016 10:00:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.58.33 with SMTP id j30ls3531229otc.24.gmail; Tue, 18 Oct
 2016 10:00:52 -0700 (PDT)
X-Received: by 10.237.36.152 with SMTP id t24mr467586qtc.1.1476810052020;
        Tue, 18 Oct 2016 10:00:52 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-qt0-x231.google.com (mail-qt0-x231.google.com. [2607:f8b0:400d:c0d::231])
        by gmr-mx.google.com with ESMTPS id u82si1970266ywg.3.2016.10.18.10.00.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 18 Oct 2016 10:00:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c0d::231 as permitted sender) client-ip=2607:f8b0:400d:c0d::231;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c0d::231 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x231.google.com with SMTP id m5so159207131qtb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 18 Oct 2016 10:00:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=VmE+Fd9DvTbBC5gb+YNrX0n2yia2l2avNjHsdBxNBIc=;
        b=GYGpOAmXMv4lZ6HSD/KOK61xhLyyLqlKw+E4pmmxvjCXxuHFMmZceTyvClvPGKTYyT
         7FRY2MGadr1kcjdXFYOsJaCWiK0RJbVd12onVTTdojH/6bH2kurJ4CG3yr0+t5GH07cf
         63nPBEw+NZGhSeH5NDLH7TMcnaLpEqq/bXxD/fcZ7fkRBc+vuZaxB2OU4TiBWceqJERe
         ubm24uvqhRQGvzYUm7bm0cDe+HEK+hfWVnH9EFBE942VJGsVYvs0m8sZ7WrX1Sipur1B
         CHNIotmPYG0d5s7KQ3/sqhz+WAaLfYwnUbqUGDru3LNJM6cqcRIrGxpIj3XspArcMbbY
         Whfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=VmE+Fd9DvTbBC5gb+YNrX0n2yia2l2avNjHsdBxNBIc=;
        b=Ahl+87ayaFCTLrFyoW7XF18WTLbZ128wEFmdjo8AAhfOTTkdr38ge+QyeOSnBJINpa
         owo7o9ww0jKFr9vP/lGcOQpd+F8SFjNyi+k9HyOs+hnRbWFPVM+0sUNMOMrFLRvLVQz/
         O/bNzzGvXpGnx2LpW0tSSXnQAS/Tl5iBjddrsnEl1ZDYaZXlVkABmoYxJIOolUU0kIbB
         yRYe1o8wd2QBTqSt1KPQl2kjH+4sUPM0fWJiOKmaJ8SX9BvinlYmUmpSvSpq8nRDFi+/
         Fr2yhMphaAyGEMCflEtfzBYzJ0QMNwSHtFKo4SqAuOrbhIJQ8ErN6DK2MGZ+yatka1Bf
         PYYg==
X-Gm-Message-State: AA6/9RnRvjPrQ8KHTpQv2nq8AbdgxJHzDN9+IPSqSW5Yk/jLz2nV+jgkdshGbwtUIqzzMxwuiYK5zZO5EQiZHw==
X-Received: by 10.237.49.4 with SMTP id 4mr1576701qtg.56.1476810051773; Tue,
 18 Oct 2016 10:00:51 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.50.42 with HTTP; Tue, 18 Oct 2016 10:00:21 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
Date: Tue, 18 Oct 2016 22:30:21 +0530
Message-ID: <CAOCi2DGnNbqP5ba9sfqy6MPc=JbicWNKqCGaAw25NkoRwzS1vw@mail.gmail.com>
Subject: task for radix tree test suite
To: outreachy-kernel@googlegroups.com, Rik van Riel <riel@surriel.com>, 
	mawilcox@microsoft.com
Content-Type: text/plain; charset=UTF-8

Radix Tree

Radix tree is a compressed trie that is used to associate a pointer
value with an integer.
The radix tree root structure contains the height of the tree, the gfp
mask and a pointer to the child node.
The gfp mask decides how the memory allocations are performed. The
radix tree node contains a pointer to the parent, count of child node,
information to free the node ,count of child nodes.

Each layer of the Radix Tree contains 64 pointers and the next 6 bits
of the index are used to determine which pointer to use
The pointer at the last level is the user pointer. All other pointers
at the intermediate level point to the next layer.
In the radix trees, all data resides at the leaves and no data in the
intermediate nodes. The radix tree does not need re-balancing.
To insert an a pointer that has an index greater than the current
maximum index, one can insert new node above the top node to increase
the levels in the radix tree. While deleting an element, if we get a
tree where the top node has only one child with index 0, we can
replace the node to decrease the levels in the radix tree.

radix tree is used for checking pages in cache, the PowPC architecture
uses a radix tree to map real and virtual IRQ numbers. The NFS code
uses a radix tree to index inode structures to keep track of
outstanding requests. The address_space structure used to keep track
of backing store contains a radix tree which tracks in-core pages tied
to that mapping.

radix tree can also be used of pid allocation as well as fd
allocation. Radix tree is a better choice than IDR API since the size
of the pointer is 64 bits in radix tree as compared to 128 bits in IDR
API. Hence, the IDR API unnecessarily wastes space which can be saved
by using the radix tree API.

Timeline:

Week 1 and 2: Find out the current code coverage and the modules that
do not have tests written for them. Use tools like gocv, gct, etc. for
the code coverage. Look at past radix tree test suite patches to find

Week 3 to 6: Write tests for the modules that were missing coverage
found in the preliminary study.

Week 7 to 10: Add benchmarks for radix tree modules for example, radix
tree iterator.

Week 11 to 12: Add documentation for all the modules that have been
covered by the test suites and the modules that are left. Also
document some of the difficulties that might have come while writing
test for a few of these modules to ease the transition for people
writing the tests in future.

