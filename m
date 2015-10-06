X-GM-THRID: 6202652871088930816
X-Received: by 10.194.156.193 with SMTP id wg1mr6910740wjb.3.1444167804263;
        Tue, 06 Oct 2015 14:43:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.23.194 with SMTP id o2ls10133wif.12.gmail; Tue, 06 Oct
 2015 14:43:23 -0700 (PDT)
X-Received: by 10.180.10.202 with SMTP id k10mr4082722wib.2.1444167803621;
        Tue, 06 Oct 2015 14:43:23 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.126.130])
        by gmr-mx.google.com with ESMTPS id q6si648047wif.2.2015.10.06.14.43.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 14:43:23 -0700 (PDT)
Received-SPF: neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.126.130;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.126.130 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue003) with ESMTPSA (Nemesis) id 0Lo5FM-1aGk2E3RHc-00g2Dt; Tue, 06 Oct
 2015 23:43:22 +0200
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Alison Schofield <amsfield22@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8712: Move constant to right of test or replace with "!"
Date: Tue, 06 Oct 2015 23:43:22 +0200
Message-ID: <5484882.usqQxJfLyD@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <20151006214058.GA16035@Ubuntu-D830>
References: <20151006214058.GA16035@Ubuntu-D830>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:UkGvIqCS2k02GFtOqRoSmaHb8sCDm8+cUXnjlb+IVP3eEpB5CUc
 fBosQ2ToQ5BNWlD1snfvVDOpsK9PxBQiMgIw6suEN8ogdK4qslUilw8HQnpWgmsx8jdz9h5
 plf3JwLW94dW4lHaTaPHzJ05ugvG6TLhjGHIF0zddFhioHEvzRro8H+cOPe3tUdujAhWKx6
 p24T+xj90FtvB6pYPReGA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:gq4oX4eXdrA=:n0jaeTV71UC7SJGay0Mf20
 2V3gNHccbO9ik8A2TU3h/2wd22uT9L1xJ5Iygr40aWL8ZFOmZ37+g3lht4dXRlMPYpKWCLUTs
 WiboY7q6Bmer3z+mzfzOTxY2pSvRbr2KclKNKxc9AVI94T3IzGrX4kJlwTdd4fo1EuGOO3t8U
 Ja1Cz+P1FQRDf6YMTZSBpSnbeuwm7CJbdGa/VCKOXd1iTa95qk7AgZQrDzZAcZfvz0uW3VLhV
 bw/X34Lk216w40K6nLRggpmmeXrHWKIqTnajHjwaRkBKkxcz30fON9gMS7N9MqTcqu0N0jSEu
 oqhKkSojMvQcqEK/x+x7uiFm3ulyCF8XKDZEVmxgZJ8jBi86Nhd+xhYpbKnSSnl3ksbhPlMMp
 2JtN7F9i4S/zQx3qPLEat6O72Vzwl/m6LXREh+g0r9Wfr8rpEbMvQLbMAETc5aT5+tjfY4bjI
 TU+l0wpR+caG2cNsIE0E1bYqdzNw7Guiw8rHAmzvU1O/kI+vAVI1jc05IYTfTlGQzmd3QAcZJ
 xmmWiMvhEebAGpBadtSWWHOYZ0orYvbiXrx/5DQ94jKKtoMmoBFHmCa0RjAQCDp4f9CKKHW67
 LNcjWAVqHUvupndgFq8m/YNop0pWifLILgjAjbQ3P3ekNcbKliDW/rBiyw1GpThgGXjxjNqAw
 UsCMswHxbR4+1j6zPrzQrCL3J95Ij4NyfPYKBMGS794IxOepsfAoNmnVQxcPK62VSg/MTZfGP
 hUlF2tEUoy+wXyUt

On Tuesday 06 October 2015 14:40:58 Alison Schofield wrote:
> Move constant to the right side of comparison operator or replace
> equality operator (==) with the unary negation operator (!) if the
> comparison is to zero.
> 
> Addesses multiple instances of the checkpatch.pl warning:
> WARNING: Comparisons should place the constant on the right side of the
> test
> 
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> 

Reviewed-by: Arnd Bergmann <arnd@arndb.de>

