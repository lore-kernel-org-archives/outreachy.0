X-GM-THRID: 6341798298000556032
X-Received: by 10.98.206.14 with SMTP id y14mr6895442pfg.4.1476709828738;
        Mon, 17 Oct 2016 06:10:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.103.72 with SMTP id u69ls2353846itc.6.gmail; Mon, 17 Oct
 2016 06:10:25 -0700 (PDT)
X-Received: by 10.67.7.225 with SMTP id df1mr5790765pad.106.1476709825504;
        Mon, 17 Oct 2016 06:10:25 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-qt0-x233.google.com (mail-qt0-x233.google.com. [2607:f8b0:400d:c0d::233])
        by gmr-mx.google.com with ESMTPS id g8si2029315ywe.2.2016.10.17.06.10.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 06:10:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c0d::233 as permitted sender) client-ip=2607:f8b0:400d:c0d::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c0d::233 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x233.google.com with SMTP id s49so117287043qta.0
        for <outreachy-kernel@googlegroups.com>; Mon, 17 Oct 2016 06:10:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=F4zM07fpnJY8lk8FhnJxYrxf46a6T0TYssBgvRhflLw=;
        b=jIUqXDhECHghce/6ZHVKvO5/40VqY5LZoAKLtFT4v1oTG7MRxcC0zLm+ldpVh3tDsO
         1Vbest/qpQO4ByT0Gtxj88iZxCNmfmbMinOrT4B1tgzP6KWTYlZIOQ+OKT6jLiwyDZPc
         gH1zwffMSZYFWVcoVBMtDR1RD5CuKr/X1axZkySm2oV1ZT1kr59Rj0cWPYyT8VBHioU1
         ef9WLvPKL1ljJBSCwplZn6fCpGHMgfacbG2hnVNvKLjsff86WZgq7V7WGnL757oY8DwY
         ZKqahBAQ4oFRZb38LF7wuXh4kikcQASeIfl7Nqm+uOW89JD9AntpgTBtmeyp1fUrBBFR
         SAgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=F4zM07fpnJY8lk8FhnJxYrxf46a6T0TYssBgvRhflLw=;
        b=SwzNuRSWE8jpgutMag6AdSgT4Idk8w+RZOtRev3ezlegrGXRDHgS4YKvWrGDMrD2AN
         a7x4r4dmf2xVZAbE4Am167YJyKdD2HGjTx4uUxehm1SGbpjNhY66J1GR7C1B1dVjnCbf
         c39HW8TVyugvgZQMGgxHbVAigPREsWAOsDZJj1uSOafjv2ivpCnBvefE9g0/zbUxvofr
         PIA7gTn3XmW1CISb+Z5Dlzta6P8eh+w53bxkPl0K5JJONl5rCCL/QmBOUwX0IFe9EAAC
         XuSWbPPVS1hWus8Qda9CYddCAMnJaoceopCiLZl6FiAYD/BkfKE6msv6wAJ8pdaJhGsU
         ZnPg==
X-Gm-Message-State: AA6/9RnyrC7p1HcRBmn5cuR751EhPJ/DQfdqZd6cpWg2VovtuC4rmqO93qkp14VBE7batWEKGqdO5nDxOFu+tg==
X-Received: by 10.237.36.179 with SMTP id t48mr22657911qtc.19.1476709823803;
 Mon, 17 Oct 2016 06:10:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.50.42 with HTTP; Mon, 17 Oct 2016 06:09:53 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
Date: Mon, 17 Oct 2016 18:39:53 +0530
Message-ID: <CAOCi2DGc1rRtzG+LwLmUgn5AvKh=Uu+yRVGiZ9irtDxpaoJ8aA@mail.gmail.com>
Subject: task for radix tree __alloc_fd
To: outreachy-kernel@googlegroups.com, Rik van Riel <riel@surriel.com>, 
	Matthew Wilcox <matthew@wil.cx>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Part 1
---
how sys_open() currently finds the first open file descriptor, and
allocates/resizes the file descriptor table

1. sys_open() makes a call to get_unused_fd() for getting an empty
file descriptor.

2. get_unused_fd()
The open_fds field initially contains the address of the open_fds_init
field, which is a bitmap that identifies the file descriptors of
currently opened files. The max_fdset field stores the number of bits
in the bitmap.

2.1 calls find_next_zero_bit
2.1.1 find_next_zero_bit() finds the first zero bit in a bit string of
length 'size' bits, starting the search at bit 'offset'.
2.1.2 If the fd > max_fdset then we need to expand the fdset and
repeat to find the next_zero_bit

2.2 Expand_fdset
2.2.1 nfds is the upper limit on new file descriptors.
2.2.2 If nfds < PAGE_SIZE*8 then Nfds =3D PAGE_SIZE*8
2.2.3 Else as long as nfds is less than the absolute upper limit on fd
num, double the number of fds
2.2.4 To assign memory to the expanded file descriptor array, call a
function depedening on the size that has to be allocated.
2.2.4.1 if it=E2=80=99s less than PAGE_SIZE, kmalloc
2.2.4.2 Equal to page size, get_free_page
2.2.4.3 Vmalloc, because kmalloc can fail in providing contiguous
memory blocks if buffer size is large. vmalloc is often slower than
kmalloc, because it may have to remap the buffer space into a
virtually contiguous range.

---
Part 2
---
IDR API

IDR is charged with the allocation of integer ID numbers used with
device names, POSIX timers, etc. IDR has a radix-tree like structure
for fast lookups and traversal. Is is very convenient to associate an
integer and a pointer.

idr_preload() function is charged with allocating the memory necessary
to satisfy the next allocation request.

idr_alloc() will actually allocate an integer ID. It accepts upper and
lower bounds for that ID to accommodate code that can only cope with a
given range of numbers.

An idr object can be thought of as a sparse array mapping integer IDs
onto arbitrary pointers, with a "get me an available entry" function
as well. With these functions, kernel code can generate ID numbers to
use as minor device numbers, inode numbers, or in any other place
where small integer IDs are useful.

To help users detect reused ID numbers, the idr code makes it possible
for callers to perform a check by ignoring the high-order bits in the
ID number. "High-order" is defined as "all the bits which are not
needed to represent the largest allocated ID." By putting some sort of
unique information in the upper part of the ID (and by limiting the
maximum ID number which can be used), idr users can turn the small ID
numbers into unique identifiers.

---
Part 3
---

Using IDR API to replace code in __alloc_fd

__alloc_fd uses find_next_fd and expand_files

find_next_fd locates the first unused descriptor in a linear array,
and as higher bits are set in the array, it becomes impractical.

__alloc_fd finds the lowest zero bit and allocates it to the file descripto=
r

To achieve the same behavior with IDR API we use idr_alloc to find an integ=
er
in the [start,end) {the parameters start and end are given to
__alloc_fd, the same parameters can be used}

Using IDR API is better because the idr_alloc implementation uses
radix trees to find an empty slot, and this will take lesser time as
the bitmap did a linear search for an empty descriptor while the radix
tree can return a descriptor in logarithm time complexity.

---
Part 4
---
Proposed Timeline:

Week 1: Read up on __alloc_fd, and the functions that are called by
__alloc_fd and read up on the IDR API.

Week 2 to 4: work on replacing the implementation of __alloc_fd by
replacing the function calls to find_next_fd by calling the IDR API

Week 4 to 8: replace the implementation of expand_files since we are
not using bitmap anymore.

Week 9 to 12: figure out locking mechanism such that there is not race
condition for the same file descriptor in the function. Performance
Benchmarks to see how much improvement was caused by using the IDR api
for allocating fds.

