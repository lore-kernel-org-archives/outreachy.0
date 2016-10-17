X-GM-THRID: 6342507519581093888
X-Received: by 10.66.74.232 with SMTP id x8mr6150663pav.10.1476730108556;
        Mon, 17 Oct 2016 11:48:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.135.133 with SMTP id f127ls2533954ite.18.canary; Mon, 17
 Oct 2016 11:48:26 -0700 (PDT)
X-Received: by 10.36.216.4 with SMTP id b4mr3424645itg.33.1476730106696;
        Mon, 17 Oct 2016 11:48:26 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id z76si4972841pff.1.2016.10.17.11.48.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 11:48:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x232.google.com with SMTP id e6so81997027pfk.3
        for <outreachy-kernel@googlegroups.com>; Mon, 17 Oct 2016 11:48:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=etowX38NeDDMKnZEVDUeal9pVSlevZ2VIoWXxyJvOmo=;
        b=Yiu0tES+GN66yEyH+0bfTtloWs72NI8IBSEG8uCD8w1uwsSTCEzk6KOvxpWGP8/DEJ
         G+wr5MdRXQ+z2YDheGyK5zYzLOaH1pH5xnvOBUthM7NUR5tJUYA1TgsKqLFnXIGR3GiS
         AUyIGrX41JGq/Ksi/uq8IqDXnV9Ymvcuo9SNilyklFMNsH6T4WxgsI7E0WMYt/+u4FAw
         8u1cXBORtAXo8XE5fqHzoZFjHnEum48NamcUgUcwaJv1IQ6bYcJ7UJvMWFGxQtp/HJ0a
         G3Zp3WNS/iMCU2L8EDhQv43jxHmMoROEUgpbDhPb/pZRccG+vbdcVXszZiWYLVo7QZZ+
         SlMg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=etowX38NeDDMKnZEVDUeal9pVSlevZ2VIoWXxyJvOmo=;
        b=SFGnMkaLSMB6PNiZ3zOSh2tq901nIdRUz5yUtk/TY2X0PnTxSCW9tO6p0m+uUJ0+0s
         2q7m9/D44INVdGTvJ1VqsiLCnaa5CyhsytJZ0z+OFfFjuk+jOfhC8ArbTmShaf7j1NOO
         IAYaGw7v61tNJxt3XpqIwLyDEoY3vCYoY+aLigHBQ/hwaXW+lOqj6jRKw1NVPRjNMc3M
         wXT31+HB7qcqsl//usi9r2aKW2aspC8npWq0fNu2rj3BfWh75EIPmW2J/WOXTyRXxr8Z
         JlJCamLieoERD1LEDDuvC1/2ENvoFjaj4Pq6XERRstZFUCU+cV7eqJkfuFws+DYGFfxV
         iYyA==
X-Gm-Message-State: AA6/9Rm9uCc07Egk53LIWk5JbF8XFpdJVxH76Pms3/JeaVsw/JnH6rU9qkQsKeJFPwtDpA==
X-Received: by 10.99.157.75 with SMTP id i72mr33057408pgd.147.1476730106331;
        Mon, 17 Oct 2016 11:48:26 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id w70sm49795329pfa.89.2016.10.17.11.48.24
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 17 Oct 2016 11:48:25 -0700 (PDT)
Date: Tue, 18 Oct 2016 00:18:19 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: mawilcox@microsoft.com, riel@surriel.com
Subject: [TASKS] Report for project: radix tree test suite
Message-ID: <20161017184819.GA4830@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Here is what I read about Kernel radix trees:

There are two implementations.
One is in <include/linux/idr.h> and <lib/idr.c>, the other in
<include/linux/radix-tree.h> and <lib/radix-tree.c>. Both provide a mapping
from a number (unsigned long) to an arbitrary pointer (void *), though
radix-tree also allows up to two "tags" to be stored with each entry.

At each level, starting from most significant 6 bits at the root, we use the
next 6 bits of the key to choose the slot at that node. At the last level, we
have the desired value (user pointer), otherwise we have a pointer to a next
level node.

I took a look at the implementation of insert, delete, lookup, preload and
tag processing functions.

Radix tree is used for checking presence of pages in cache, finding pages with
dirty/ under writeback tag etc, many places where we want resizable arrays like
drivers, example NVM Express, File Systems like NFS, interrupt controllers.

Project: radix tree test suite

The Radix Tree Test Suite was first merged into Linux 4.6. It can be enhanced
in the following ways:
(From the project introduction)
-Providing test coverage by adding missing tests. We can use tools like gcov
for this.
-Adding performance measures.
-Make it share common test infrastructure, macros, for example using
tools/include.

I looked at many patches, about tests for insertion and lookup, tests for
multiorder entries, about using common kernel macros, to allow option for less
testing time, or ad-hoc tests for corner cases and benchmark test for iterators.
I think they are a good starting point to learn about what is expected from this
project.

Some more thoughts:
-Running tests in parallel (I did see single_thread_tests for regression tests)
-I could also look at other types of tests, performance benchmarks in other
parts of the kernel, used for other data structures and see if we can
incorporate them/similar ones into radix tree test suite.
-If IDR is re-written on Radix tree core, we might need test suite to be part
generic to both, and part specific.

Timeline for project - radix tree test suite:
- Get a deeper understanding of Radix tree implementation, clear any doubts about it.(1 week)
- Try gcov, and look for other ways/scripts to identify corner cases or functions that need coverage, Add missing tests identified. (2-3 weeks)
- Use more common, generic kernel code instead of specific, example from tools/include. (1-2 weeks)
- Add performance/Benchmark tests based on memory, time usage etc. (1-2 weeks)
- Document the changes. Any other cleanups/refactoring/modifications required to radix_tree or test suite. (1-2 weeks).
- Buffer time for unexpected delays, or necessary work unidentified in the beginning. (1-2 weeks).

