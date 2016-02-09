X-GM-THRID: 6249137798348013568
X-Received: by 10.112.149.228 with SMTP id ud4mr630698lbb.18.1455007786938;
        Tue, 09 Feb 2016 00:49:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.137.68 with SMTP id l65ls532570wmd.8.gmail; Tue, 09 Feb
 2016 00:49:46 -0800 (PST)
X-Received: by 10.194.20.170 with SMTP id o10mr3841491wje.4.1455007786263;
        Tue, 09 Feb 2016 00:49:46 -0800 (PST)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id c143si454682wmd.1.2016.02.09.00.49.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 00:49:46 -0800 (PST)
Received-SPF: neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) client-ip=212.227.17.24;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 212.227.17.24 is neither permitted nor denied by best guess record for domain of arnd@arndb.de) smtp.mailfrom=arnd@arndb.de
Received: from wuerfel.localnet ([78.42.132.4]) by mrelayeu.kundenserver.de
 (mreue102) with ESMTPSA (Nemesis) id 0LjrPF-1ZrFKa0WCX-00bq61; Tue, 09 Feb
 2016 09:49:45 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: Re: [Outreachy kernel] Doubt regarding build warnings
Date: Tue, 09 Feb 2016 09:49:44 +0100
Message-ID: <6075631.lJNnAgFSZy@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <ba8ae97e-c7c5-4383-bffc-a5eac3003e1d@googlegroups.com>
References: <ba8ae97e-c7c5-4383-bffc-a5eac3003e1d@googlegroups.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID: V03:K0:ebheQv0lg6VyE3fzkFSoNcd8FZKQt7duynm+YKoIhr5R3ede/vB
 r/NA+2bndv4iefm1n7gn6duzgUw/5RJfUKNojo9XkGtH688kJ7BrWXweHaGP/H2uD5dCJxs
 dLdSJQ+rvUNHtJYc4TUsDNPvOtLe6KMGHqToejFcTEpv4+r8rpnNDCmVltwDZFjvFRfIOe4
 SZpBMUeNswPQozHL+nw8A==
X-UI-Out-Filterresults: notjunk:1;V01:K0:X3sWz9H07E0=:8Y0PEqrdt9jlgRq7CYnPVR
 3Pe0pLAfIRQG5CdlUAIqsfLiUK7SnY+TQAOED1Yv10JMEU+7NHOYSh15pe/X+ucqiNk0pOaGO
 j7rjQF2PrdYAmQx3N12ae0IKxoS97KbDM0Hr3urCi6dsDVYfVBBMgmOZYk+F24tW+2FS1el8M
 XnzvSk4e+xwBiHqUpEBfhKdK3M92Ef0behDJ6IvOt7U30t4ME7abi5J30bIvWhZWXeXtro1tl
 CDDHbpjWEsXUOPOW+qYJHVsEkNcjqTTR2xAQ9eWPXYs0Nsz/6Bv2r5vbmaejN5RGVcDcCkfMp
 QxkHyuSRbSdGNpkO1HF8ogrKcfh+Ed6+gfOxBngRAKX+/MM64SjtL/F82XLlMt3M1P/vte1cL
 yROLLefeQhzRCkh11DChxBXVEaRwQYqUj+81p2yO9pKJAAngR87LQTeLeAc7x3xlAPZxGqVAu
 WP7y/YFnPmpDsk6f050fCe+eWZH9r1RkTQhCFyhqFl5D33AGxUjRcaq6M9HSh/bezvgHQ80Dn
 Qo7y2Hn1uQNoEpsy5+Fc/WhHxDJUdfP5te53n0S+2Mk+tUaKEtODhfz5LXlxbDxtOZSK2VkT5
 OHeNcEqNPxF5EnDacn0MURqFys648ouvoYYmKXF/rY9lBbmQHwCKsEOL56remAuxc4R9pmWHh
 +7t/PonnwXNVw2u1VE5p6IKY9HSLmkcqgIwYETay3SUC/RL4BS6Tl0cPhFChjOJIYY/Iw7Co+
 gv2VtI5wDMCDyJPl

On Monday 08 February 2016 20:06:15 Bhumika Goyal wrote:
> I got these warning today while building the kernel. I already got some 
> patches accepted but was not not getting any such warnings before.
> What can be the reason and how to fix? I used make M=drivers/staging for 
> the build.
> The warnings are like:
> 
> WARNING: "__cpu_online_mask" 
> [drivers/staging/lustre/lustre/ptlrpc/ptlrpc.ko] undefined!
> WARNING: "__put_page" [drivers/staging/lustre/lustre/ptlrpc/ptlrpc.ko] 
> undefined!
> WARNING: "__put_page" [drivers/staging/lustre/lustre/obdecho/obdecho.ko] 
> undefined!
> WARNING: "__cpu_possible_mask" 
> [drivers/staging/lustre/lustre/obdclass/obdclass.ko] undefined!
> WARNING: "__page_mapcount" [drivers/staging/lustre/lustre/llite/lustre.ko] 
> undefined!
> WARNING: "__put_page" [drivers/staging/lustre/lustre/llite/lustre.ko] 
> undefined!
> WARNING: "__cpu_possible_mask" 
> [drivers/staging/lustre/lustre/libcfs/libcfs.ko] undefined!
> WARNING: "__cpu_online_mask" 
> [drivers/staging/lustre/lustre/libcfs/libcfs.ko] undefined!
> 

See if you get the same warnings when you do a whole kernel build, without the
"M=drivers/staging". I personally prefer "make drivers/staging/" instead of
"make M=drivers/staging", which has slightly different behavior.

	Arnd

