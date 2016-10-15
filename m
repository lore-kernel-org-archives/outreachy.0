X-GM-THRID: 6341798298000556032
X-Received: by 10.157.60.216 with SMTP id t24mr4445880otf.71.1476564979634;
        Sat, 15 Oct 2016 13:56:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.15.105 with SMTP id 96ls10399381ott.41.gmail; Sat, 15 Oct
 2016 13:56:19 -0700 (PDT)
X-Received: by 10.176.0.244 with SMTP id 107mr1149350uaj.10.1476564979155;
        Sat, 15 Oct 2016 13:56:19 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-qk0-x22b.google.com (mail-qk0-x22b.google.com. [2607:f8b0:400d:c09::22b])
        by gmr-mx.google.com with ESMTPS id i84si1714652ywg.0.2016.10.15.13.56.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 15 Oct 2016 13:56:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c09::22b as permitted sender) client-ip=2607:f8b0:400d:c09::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c09::22b as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22b.google.com with SMTP id o68so232652326qkf.3
        for <outreachy-kernel@googlegroups.com>; Sat, 15 Oct 2016 13:56:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=vmk7e8tctqHdlh1FcSRA5gU0JOsXJoDVTD1V6BcrVtU=;
        b=Ofi+xb1T8tMkWwUyUhD03HrJt/JuPQmDCiK34XgxKDLJXKExaANrx01SgHDJpQX7zm
         ODPCmzhJnIectnPXvG2pUQHccTrXbVjfPooPYWk4P+TYGcc5XOc91EG6Xl8hi3dXD7Qf
         oZtkVBZPda98ywfnyPgCJPGdrINXKsTwwLgVDepLR5Jo9NBf0Ux5bww4jGosHbCqLbDn
         fpMV1V7+hJKIiKv2/wDVavtMKbSRQLFAGBwM8H8JmH4957/rhaAvVAKuC34Imnjmxif1
         GV/5EtFtjihjJJwVTMdRGksNGvsr6JccPvpKqrDAewwk8NxF2vTvhowcg7w9LIlpdGUR
         9xrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to
         :content-transfer-encoding;
        bh=vmk7e8tctqHdlh1FcSRA5gU0JOsXJoDVTD1V6BcrVtU=;
        b=LbAjZp0lB1dq7tqv7WNJygVueaK8xyjuDhdyWqRKJOv3Ip3xv40Kk/zmKRbclJ6Rfk
         /BaxwcdPYBMs6vyuB73IsqHVUDiCnlcpnI2APk9TokKnkzH2bIgHaVy1mOgGuLGhbRWp
         6IHPINhiJy5WWt34BiS9AWIRPEpD48Om6vZbaDw770pbEt8iRnnzu32yBUaAvWunj3M7
         16dDUF67ClX89JwaBJFlKVWXtY88uhLgEjvXQurMGYsY3GkIdmLQUS3HqNDGiZEFokXN
         z6OJ3oQCpYrfqDr3jGpcXkvUsrnoRsJomCwV+4H0TgPHq5dEMH5zObe1kzqPLfRkyc/7
         GfIg==
X-Gm-Message-State: AA6/9RnLyIIEzpmb4uJ3VXrNB4TpikpqjtDRwi/kg1q5MAIMv8djf3lnmrJAeEPb9PdIEdF/rwP3pbTZ2atRDQ==
X-Received: by 10.55.121.131 with SMTP id u125mr234592qkc.114.1476564978930;
 Sat, 15 Oct 2016 13:56:18 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.50.42 with HTTP; Sat, 15 Oct 2016 13:55:48 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
Date: Sun, 16 Oct 2016 02:25:48 +0530
Message-ID: <CAOCi2DHraHDKg3fnpezVf05FRLQL=KTK6Gk3yXtd4B4rJBu1hw@mail.gmail.com>
Subject: task for radix tree __alloc_fd
To: Rik van Riel <riel@surriel.com>, outreachy-kernel@googlegroups.com
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
radix trees to find an empty slot.

Also, the expand the fdset earlier we simply, no we need to

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
condition for the same file descriptor in the function.

