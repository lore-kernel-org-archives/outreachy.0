X-GM-THRID: 6342419870858084352
X-Received: by 10.129.120.196 with SMTP id t187mr6278213ywc.65.1476709700773;
        Mon, 17 Oct 2016 06:08:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.34.72 with SMTP id o66ls305755ota.17.gmail; Mon, 17 Oct
 2016 06:08:20 -0700 (PDT)
X-Received: by 10.157.9.182 with SMTP id q51mr6974801otd.47.1476709700382;
        Mon, 17 Oct 2016 06:08:20 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-qk0-x232.google.com (mail-qk0-x232.google.com. [2607:f8b0:400d:c09::232])
        by gmr-mx.google.com with ESMTPS id g8si2025060ywe.2.2016.10.17.06.08.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 06:08:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c09::232 as permitted sender) client-ip=2607:f8b0:400d:c09::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400d:c09::232 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x232.google.com with SMTP id n189so231700092qke.0
        for <outreachy-kernel@googlegroups.com>; Mon, 17 Oct 2016 06:08:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:from:date:message-id:subject:to;
        bh=CetX7PxZKM8oH5mhDhTpMdusH/gjDZd92GqUjTlTf5g=;
        b=NvpLB+QWhjkhKx1jHTW/fHLd8pQPD5C7aBbmKp233RUG1aapchaRu0+7Ptw31ip36Y
         bgPFs+5nLvxGBIC5iZqWhq1gWdXc4cv4+Zsz2cfhDG3xwyFY4+17k5BtbAyBMno/e3GD
         fxV5I+zJo9NYq/RyvS4MfLxzt5dmEqe6ffAXNpsAoSp/AQwo5cVX6WCxOd+xPy/+9JUK
         wcjCbZR+5LY+d+oihYupLxBjsk5BQ4yL5yZkyl8pAOXMIYTqNAU7QLddNAsi8QYOZfAc
         3S0JfS2IUTvgsbwo9HeN/SBjSKE+mgLRJMoVKUGBT6BtUprGjGZ1N2FxvFe8pAc618bH
         kt1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=CetX7PxZKM8oH5mhDhTpMdusH/gjDZd92GqUjTlTf5g=;
        b=Kp2/7oIVrmUTiPiwrZVvHUsTS5f81pfS28A4U34bjZzoE4kC1HSZ8UBKND2c0zGVJF
         aQWZsEwvwifwqg3lD7vdptFQlE7O9nuG9QqPrLrfZ4Y9sJ/xOuWRhrCPzwPotzuAiiFB
         wzWMt2Zsr18N3C3pj3Zk/vEeH7jYsKlTKbvYvjxo/RPByz5+ZlH78QSNhuYTQLe/p5et
         SBajCLeiiFX07X/l0yLyyGUikH25AqatGPzM26uLNBBfCId2MzSMnLIKRkUt1ckJRYVr
         t/BddwakVzXbUluVjHhH2zYTm4QUzi9AhU5qF+9KYCsPGbFJFNVNCzBQrHw/xfPGHzkb
         xgHg==
X-Gm-Message-State: AA6/9Rmspej2zLCvyLvV2O4IrCXQPdtulKmvig/2TaK6b8kH0NBrF8JrUulKtAzOvwy7tZczMrBSTTalXhMBVw==
X-Received: by 10.55.215.87 with SMTP id m84mr27100838qki.196.1476709700124;
 Mon, 17 Oct 2016 06:08:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.50.42 with HTTP; Mon, 17 Oct 2016 06:07:49 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
Date: Mon, 17 Oct 2016 18:37:49 +0530
Message-ID: <CAOCi2DEbtk2Zdz=8s6EeJ7OZ47sv06_dyP9a01WxJZpDvPib4Q@mail.gmail.com>
Subject: task for radix tree PID allocation
To: outreachy-kernel@googlegroups.com, Rik van Riel <riel@surriel.com>, 
	Matthew Wilcox <matthew@wil.cx>, willy@linux.intel.com
Content-Type: text/plain; charset=UTF-8

Part 1
---
how alloc_pid works

alloc_pid makes a call to the function alloc_pidmap which searches for
the next pid in the bitmap.

The kernel allocates PIDs in the range of (RESERVED_PIDS,
PID_MAX_DEFAULT). It does so sequentially in each namespace (tasks in
different namespaces can have the same IDs). In case the range is
exhausted, pid assignment wraps around.

Processes in different PID namespaces can have the same PIDs.

PID namespaces are hierarchically nested in parent-child
relationships. Within a PID namespace, it is possible to see all other
processes in the same namespace, as well as all processes that are
members of descendant namespaces. Processes in a child PID namespace
cannot see processes that exist (only) in the parent PID namespace (or
further removed ancestor namespaces).

A process will have one PID in each of the layers of the PID namespace
hierarchy starting from the PID namespace in which it resides through
to the root PID namespace. Calls to getpid() always report the PID
associated with the namespace in which the process resides.

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
Changing alloc_pid code to use IDR API

Allocate pid using idr_alloc.

alloc_pidmap makes a linear scan through the bitmap for the PID allocation.
Convert this to traverse the radix tree instead for the allocation.

Currently, the allocation takes linear time. Once, allocation is done
it will take log linear time for PID allocation.

Also, currently, we run a for loop in alloc_pid to change the pid
reference in all the parent PID namespaces. Once, we have a radix
tree, we will not to have do that any longer, since hierarchy can be
ensured by the radix tree itself.

---
Part 4
---
Proposed Timeline:

Week 1: Read up more on alloc_pid, and the functions that are called
by alloc_pid and read up on the IDR API.

Week 2 to 4: replace the code in alloc_pidmap to use idr_alloc for
allocating the integer, instead of doing a linear search through a
bitmap

Week 4 to 8: replace the code in alloc_pid so that the parent
namespaces can have a reference to the PIDs in the children
namespaces.

Week 9 to 12: reflect on the progress and firgure out the next steps.
Performance benchmarks after changing to the IDR api for PID
allocation.

