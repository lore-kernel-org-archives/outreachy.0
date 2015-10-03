X-GM-THRID: 6201416827820572672
X-Received: by 10.68.104.193 with SMTP id gg1mr17390452pbb.3.1443879871175;
        Sat, 03 Oct 2015 06:44:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.7.210 with SMTP id g79ls1243074ioi.40.gmail; Sat, 03 Oct
 2015 06:44:30 -0700 (PDT)
X-Received: by 10.66.121.135 with SMTP id lk7mr11495096pab.31.1443879870638;
        Sat, 03 Oct 2015 06:44:30 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-yk0-x233.google.com (mail-yk0-x233.google.com. [2607:f8b0:4002:c07::233])
        by gmr-mx.google.com with ESMTPS id j22si1617852ywg.2.2015.10.03.06.44.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Oct 2015 06:44:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:4002:c07::233 as permitted sender) client-ip=2607:f8b0:4002:c07::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:4002:c07::233 as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x233.google.com with SMTP id t14so134852164ykf.0
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Oct 2015 06:44:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=DV6BEKSi8mMULO7zZ1TcVtfvrLzO53PiKO9iz/7phGE=;
        b=nWj4gZSeveIqjc5KJ3oqtbHWwffzpiuPXcMvCWoTqR9A7ZTjyfAM2sBsdMxVgLxdVf
         UZNYuQc7aK442ikuCJYwyDK84vgyZxpq31TuoQTSn7e2LySNlyWg7DdbvnNVDRacgSVy
         +OMQkwnWKnfF66KhlepdTOMc1ZyoUF6wOxJPgcrZXN+ZIZFjAqT9rcggcOU7CPpFNmPL
         TCND9dl+H+AN8XBqWNAIJVLaO6bjqajlMP+ZxJcl97JIruyHKIWWXA9Q2OV82cWrYNyF
         TOFdxspDzBUmyVj8o6Cl4QjTNh1Md8s/vXtLKRhMJT1LuSqw47zN/6ThrfAPG5JQmyGK
         6eKQ==
MIME-Version: 1.0
X-Received: by 10.170.185.7 with SMTP id b7mr17723416yke.112.1443879870383;
 Sat, 03 Oct 2015 06:44:30 -0700 (PDT)
Received: by 10.37.81.3 with HTTP; Sat, 3 Oct 2015 06:44:30 -0700 (PDT)
In-Reply-To: <001a114f23b067e91605213230e5@google.com>
References: <001a114f23b067e91605213230e5@google.com>
Date: Sat, 3 Oct 2015 19:14:30 +0530
Message-ID: <CAAbeOSuU6NPBW9SmKUZVHo6hx+_fjuyLvqVcBCL3X-e-mcS3ig@mail.gmail.com>
Subject: Re: [Outreachy kernel] Abridged summary of outreachy-kernel@googlegroups.com
 - 45 updates in 13 topics
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a11393efac5d3af0521337a75

--001a11393efac5d3af0521337a75
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,
I am an Undergraduate student from India pursing Bachelors of technology in
computer science.I would like to contribute to the project   " nftables
based on C and C++ programming " for  the  upcoming outreachy program.
Could anyone guide me how  I start contributing or how i proceed with it ?T=
hank
you,
Anchal Jain

On Sat, Oct 3, 2015 at 5:42 PM, <outreachy-kernel@googlegroups.com> wrote:

> outreachy-kernel@googlegroups.com
> <https://groups.google.com/forum/?utm_source=3Ddigest&utm_medium=3Demail#=
!forum/outreachy-kernel/topics> Google
> Groups
> <https://groups.google.com/forum/?utm_source=3Ddigest&utm_medium=3Demail/=
#!overview>
> <https://groups.google.com/forum/?utm_source=3Ddigest&utm_medium=3Demail/=
#!overview>
> Today's topic summary
> View all topics
> <https://groups.google.com/forum/?utm_source=3Ddigest&utm_medium=3Demail#=
!forum/outreachy-kernel/topics>
>
>    - [PATCH] Staging: most: Use module_platform_driver
>    <#1502d9dd33172ce2_group_thread_0> - 1 Update
>    - [PATCH] Staging: panel: Replace NULL comparison.
>    <#1502d9dd33172ce2_group_thread_1> - 5 Updates
>    - [PATCH] staging: octeon: Switch unnecessary /** to /*
>    <#1502d9dd33172ce2_group_thread_2> - 3 Updates
>    - [PATCH] Staging: clocking-wizard: Use devm_kasprintf
>    <#1502d9dd33172ce2_group_thread_3> - 4 Updates
>    - [PATCH v2 0/4] Use mutex insted of semaphore
>    <#1502d9dd33172ce2_group_thread_4> - 7 Updates
>    - [PATCH v4] Staging: olpc_dcon: Replace timespec with ktime_t
>    <#1502d9dd33172ce2_group_thread_5> - 5 Updates
>    - [PATCH v2 0/3] use resource managed devm_iio_device_register
>    <#1502d9dd33172ce2_group_thread_6> - 1 Update
>    - [PATCH 0/5] Declare functions as static
>    <#1502d9dd33172ce2_group_thread_7> - 13 Updates
>    - [PATCH] Staging: lustre: obdclass: Remove unused functions
>    <#1502d9dd33172ce2_group_thread_8> - 2 Updates
>    - [PATCH] staging: octeon: Remove excess parameter from doc
>    <#1502d9dd33172ce2_group_thread_9> - 1 Update
>    - [PATCH] staging: octeon: Remove bad line
>    <#1502d9dd33172ce2_group_thread_10> - 1 Update
>    - [PATCH] staging: dgnc: Fix line over 80 characters warning
>    <#1502d9dd33172ce2_group_thread_11> - 1 Update
>    - [PATCH] Staging: board: Fixed the error for implicit declaration of
>    function <#1502d9dd33172ce2_group_thread_12> - 1 Update
>
> [PATCH] Staging: most: Use module_platform_driver
> <http://groups.google.com/group/outreachy-kernel/t/824eb23072772fba?utm_s=
ource=3Ddigest&utm_medium=3Demail>
> Shraddha Barke <shraddha.6596@gmail.com>: Oct 03 05:31PM +0530
>
> Use module_platform_driver for drivers whose init and exit functions
> only register and unregister, respectively. Thus remove some
> boilerplate code.
>
> A simplified version of Coccinelle patch -
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/8b66166281845?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Back to top <#1502d9dd33172ce2_digest_top>
> [PATCH] Staging: panel: Replace NULL comparison.
> <http://groups.google.com/group/outreachy-kernel/t/68460a50a1f0abb7?utm_s=
ource=3Ddigest&utm_medium=3Demail>
> Aybuke Ozdemir <aybuke.147@gmail.com>: Oct 03 01:28AM +0300
>
> This patch using NULL checks instead of "!" operator in panel.c
> Addresses checkpatch.pl check:
> CHECK: Comparison to NULL could be written *.
>
> Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/88a0b99f447fe?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Julia Lawall <julia.lawall@lip6.fr>: Oct 03 08:12AM +0200
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/8a354f35a35e8?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Aybuke Ozdemir <aybuke.147@gmail.com>: Oct 03 02:15PM +0300
>
> Use ! operating instead of NULL checks.
> Addresses checkpatch.pl check:
> CHECK: Comparison to NULL could be written "lcd_char_conv".
>
> Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
> --- ...more
> <http://groups.google.com/group/outreachy-kernel/msg/8b3dafcc450c6?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Julia Lawall <julia.lawall@lip6.fr>: Oct 03 01:26PM +0200
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/8b46fcf326829?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Aybuke Ozdemir <aybuke.147@gmail.com>: Oct 03 02:52PM +0300
>
> Use ! operating instead of NULL checks.
> Addresses "CHECK: Comparison to NULL" from checkpatch.pl.
>
> Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
> ---
> Changes since v1:
> * change commit ...more
> <http://groups.google.com/group/outreachy-kernel/msg/8b5dffae1559c?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Back to top <#1502d9dd33172ce2_digest_top>
> [PATCH] staging: octeon: Switch unnecessary /** to /*
> <http://groups.google.com/group/outreachy-kernel/t/86b61c6c58a20ac5?utm_s=
ource=3Ddigest&utm_medium=3Demail>
> Cristina Moraru <cristina.moraru09@gmail.com>: Oct 02 09:49PM +0300
>
> Fix kernel-doc comment used as regular comment.
> Fix 'cannot understand function prototype' Warning
>
> Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> --- ...more
> <http://groups.google.com/group/outreachy-kernel/msg/87e1419864dae?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Julia Lawall <julia.lawall@lip6.fr>: Oct 02 10:26PM +0200
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/8835785065178?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Cristina-Gabriela Moraru <cristina.moraru09@gmail.com>: Oct 03 02:49PM
> +0300
>
> Yes, I changed "/**" to "/*" where "/**" was used in regular comments and
> not kernel-doc comments.
>
> For example, the code:
> > * cvm_oct_poll_queue - Workqueue for polling operations.
> > */ ...more
> <http://groups.google.com/group/outreachy-kernel/msg/8b5b2be72712f?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Back to top <#1502d9dd33172ce2_digest_top>
> [PATCH] Staging: clocking-wizard: Use devm_kasprintf
> <http://groups.google.com/group/outreachy-kernel/t/f47635ade94c6b20?utm_s=
ource=3Ddigest&utm_medium=3Demail>
> Shraddha Barke <shraddha.6596@gmail.com>: Oct 03 12:28AM +0530
>
> Use devm_kasprintf instead of kasprintf and remove various
> gotos by direct returns. Also, drop labels err_rm_int_clks,
> err_rm_int_clk and err_disable_clk as they are not used anymore.
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/87e87eceafcf9?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Arnd Bergmann <arnd@arndb.de>: Oct 02 11:13PM +0200
>
> On Saturday 03 October 2015 00:28:03 Shraddha Barke wrote:
> > -err_disable_clk:
> > - clk_disable_unprepare(clk_wzrd->axi_clk);
> > -
>
> Are you sure you can remove all of these?
>
> Arnd
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/885f0d8f27325?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Julia Lawall <julia.lawall@lip6.fr>: Oct 02 11:57PM +0200
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/88851ccc4eea6?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Shraddha Barke <shraddha.6596@gmail.com>: Oct 03 02:05PM +0530
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/8ab2a31546fbe?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Back to top <#1502d9dd33172ce2_digest_top>
> [PATCH v2 0/4] Use mutex insted of semaphore
> <http://groups.google.com/group/outreachy-kernel/t/ad9f978b27b68e1f?utm_s=
ource=3Ddigest&utm_medium=3Demail>
> Ksenija Stanojevic <ksenija.stanojevic@gmail.com>: Oct 02 10:02PM +0200
>
> This patchset replaces binary semaphore with mutex in comedi drivers.
>
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
>
> Ksenija Stanojevic (4):
> Staging: comedi: Use mutex ...more
> <http://groups.google.com/group/outreachy-kernel/msg/882078aa52ce3?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Ksenija Stanojevic <ksenija.stanojevic@gmail.com>: Oct 02 10:04PM +0200
>
> Replace binary semaphore with mutex because mutex gives better
> performance.
> This change is safe because the thread that decrements the value of
> semaphore
> is also the one that increments it, and ...more
> <http://groups.google.com/group/outreachy-kernel/msg/882260d5b2b43?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Ksenija Stanojevic <ksenija.stanojevic@gmail.com>: Oct 02 10:05PM +0200
>
> Replace binary semaphore with mutex because mutex gives better
> performance.
> This change is safe because the thread that decrements the value of
> semaphore
> is also the one that increments it, and ...more
> <http://groups.google.com/group/outreachy-kernel/msg/8823c6d457524?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Ksenija Stanojevic <ksenija.stanojevic@gmail.com>: Oct 02 10:07PM +0200
>
> Replace binary semaphore with mutex because mutex gives better
> performance.
> This change is safe because the thread that decrements the value of
> semaphore
> is also the one that increments it, and ...more
> <http://groups.google.com/group/outreachy-kernel/msg/88258cad00305?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Ksenija Stanojevic <ksenija.stanojevic@gmail.com>: Oct 02 10:09PM +0200
>
> Replace binary semaphore with mutex because mutex gives better
> performance.
> This change is safe because the thread that decrements the value of
> semaphore
> is also the one that increments it, and ...more
> <http://groups.google.com/group/outreachy-kernel/msg/8827107b75d48?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Arnd Bergmann <arnd@arndb.de>: Oct 02 10:52PM +0200
>
> On Friday 02 October 2015 22:04:22 Ksenija Stanojevic wrote:
> > is also the one that increments it, and acts like a mutex where owner o=
f
> the
> > lock is the only one that can release the lock.
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/884be2b4e23a4?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Julia Lawall <julia.lawall@lip6.fr>: Oct 03 10:11AM +0200
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/8a9d555f60be6?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Back to top <#1502d9dd33172ce2_digest_top>
> [PATCH v4] Staging: olpc_dcon: Replace timespec with ktime_t
> <http://groups.google.com/group/outreachy-kernel/t/5ffb5cdc3ddf4b78?utm_s=
ource=3Ddigest&utm_medium=3Demail>
> Ksenija Stanojevic <ksenija.stanojevic@gmail.com>: Oct 02 07:24PM +0200
>
> Struct timespec will overflow in year 2038, here it will not cause an
> overflow because it is used with timespec_sub, but still has to be
> removed as part of y2038 changes. Replace it with ktime_t. ...more
> <http://groups.google.com/group/outreachy-kernel/msg/8796744bfeecb?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Sudip Mukherjee <sudipm.mukherjee@gmail.com>: Oct 03 11:29AM +0530
>
> On Fri, Oct 02, 2015 at 07:24:05PM +0200, Ksenija Stanojevic wrote:
> > ---
> > Changes in v4:
> > -fix checkpatch.pl errors/warnings introduced by changes made
> You missed one more checkpatch warning. ...more
> <http://groups.google.com/group/outreachy-kernel/msg/8a29b3b3f9f43?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> "Ksenija Stanojevi=C4=87" <ksenija.stanojevic@gmail.com>: Oct 03 08:05AM =
+0200
>
> Hi Sudip,
>
> On Sat, Oct 3, 2015 at 7:59 AM, Sudip Mukherjee
> >> break;
> >> }
> > braces are not required for single statement if block.
>
> I didn't know whether ...more
> <http://groups.google.com/group/outreachy-kernel/msg/8a2ee9d39e0f1?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Julia Lawall <julia.lawall@lip6.fr>: Oct 03 08:18AM +0200
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/8a3aa857a7028?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Sudip Mukherjee <sudipm.mukherjee@gmail.com>: Oct 03 12:09PM +0530
>
> On Sat, Oct 03, 2015 at 08:05:16AM +0200, Ksenija Stanojevi=C4=87 wrote:
>
> > I didn't know whether snould I change that or not, because that change
> is maybe
> > for another patch?
> > Should I fix it and ...more
> <http://groups.google.com/group/outreachy-kernel/msg/8a4cf1d15ba43?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Back to top <#1502d9dd33172ce2_digest_top>
> [PATCH v2 0/3] use resource managed devm_iio_device_register
> <http://groups.google.com/group/outreachy-kernel/t/66f564fda9abaf1f?utm_s=
ource=3Ddigest&utm_medium=3Demail>
> Arnd Bergmann <arnd@arndb.de>: Oct 02 11:28PM +0200
>
> On Friday 02 October 2015 13:37:47 Ioana Ciornei wrote:
> > only unregisters the device. Since an iio_dev registered with this
> function is
> > automatically unregistered on driver detach there is no ...more
> <http://groups.google.com/group/outreachy-kernel/msg/886b60c2a4de5?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Back to top <#1502d9dd33172ce2_digest_top>
> [PATCH 0/5] Declare functions as static
> <http://groups.google.com/group/outreachy-kernel/t/2b9fc9c6f49a6aa8?utm_s=
ource=3Ddigest&utm_medium=3Demail>
> Shraddha Barke <shraddha.6596@gmail.com>: Oct 02 11:19PM +0530
>
> These patches declare the functions and structures which are not
> used anywhere else as static.
>
>
> Shraddha Barke (5):
> Staging: lustre: obdclass: cl_io: Declare as static
> Staging: lustre: ...more
> <http://groups.google.com/group/outreachy-kernel/msg/87ac764ab2634?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Shraddha Barke <shraddha.6596@gmail.com>: Oct 02 11:19PM +0530
>
> Declare cl_lock_intransit and cl_lock_extransit as static since they
> are used only in this particular file.
>
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> --- ...more
> <http://groups.google.com/group/outreachy-kernel/msg/87ac890def72d?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Shraddha Barke <shraddha.6596@gmail.com>: Oct 02 11:19PM +0530
>
> Declare class_add_conn, class_add_profile, class_cleanup,
> class_config_parse_rec, class_del_conn, class_detach, class_match_param,
> class_attach, class_setup as static since they are used only in ...more
> <http://groups.google.com/group/outreachy-kernel/msg/87ac963148fe1?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Shraddha Barke <shraddha.6596@gmail.com>: Oct 02 11:19PM +0530
>
> Declare class_get_type and class_search_type as static since they
> are used only in this particular file. Also remove the declaration
> from header files.
>
> Signed-off-by: Shraddha Barke ...more
> <http://groups.google.com/group/outreachy-kernel/msg/87aca1f979f03?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Shraddha Barke <shraddha.6596@gmail.com>: Oct 02 11:19PM +0530
>
> Declare class_resolve_dev_name as static it is not used anywhere
> apart from this particular file.Also remove the declaration
> from header file
>
> Signed-off-by: Shraddha Barke ...more
> <http://groups.google.com/group/outreachy-kernel/msg/87acab344af8c?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Shraddha Barke <shraddha.6596@gmail.com>: Oct 02 11:19PM +0530
>
> Declare cl_page_list_assume, cl_io_cancel, cl_io_rw_advance,
> cl_page_list_del, cl_page_list_discard, cl_page_list_fini as
> static since they are used only in this particular file.
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/87acc80ace7d9?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Arnd Bergmann <arnd@arndb.de>: Oct 02 10:25PM +0200
>
> On Friday 02 October 2015 23:19:10 Shraddha Barke wrote:
> > static since they are used only in this particular file.
> > Also remove them from corresponding header files
>
> > Signed-off-by: Shraddha ...more
> <http://groups.google.com/group/outreachy-kernel/msg/883526a9692d3?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Arnd Bergmann <arnd@arndb.de>: Oct 02 10:36PM +0200
>
> On Friday 02 October 2015 23:19:11 Shraddha Barke wrote:
> > ---
> > drivers/staging/lustre/lustre/obdclass/cl_lock.c | 10 ++++------
> > 1 file changed, 4 insertions(+), 6 deletions(-)
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/883e691af19e8?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Arnd Bergmann <arnd@arndb.de>: Oct 02 10:38PM +0200
>
> On Friday 02 October 2015 23:19:12 Shraddha Barke wrote:
> > particular file. Also remove the corresponding declarations from
> > header files.
>
> > Signed-off-by: Shraddha Barke ...more
> <http://groups.google.com/group/outreachy-kernel/msg/883fb8d96b227?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Arnd Bergmann <arnd@arndb.de>: Oct 02 10:45PM +0200
>
> On Friday 02 October 2015 23:19:13 Shraddha Barke wrote:
> > void class_put_type(struct obd_type *type);
> > int class_connect(struct lustre_handle *conn, struct obd_device *obd,
> > ...more
> <http://groups.google.com/group/outreachy-kernel/msg/8846390f3fb0d?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Arnd Bergmann <arnd@arndb.de>: Oct 02 10:47PM +0200
>
> On Friday 02 October 2015 23:19:14 Shraddha Barke wrote:
> > apart from this particular file.Also remove the declaration
> > from header file
>
> > Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/884788eba1fef?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Shraddha Barke <shraddha.6596@gmail.com>: Oct 03 02:21AM +0530
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/884b39fb40840?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Arnd Bergmann <arnd@arndb.de>: Oct 02 10:54PM +0200
>
> On Saturday 03 October 2015 02:21:10 Shraddha Barke wrote:
>
> > Yes that would normally happen. But the declarations for these were
> > removed in another patch 4 days ago. ...more
> <http://groups.google.com/group/outreachy-kernel/msg/884e25108238c?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Back to top <#1502d9dd33172ce2_digest_top>
> [PATCH] Staging: lustre: obdclass: Remove unused functions
> <http://groups.google.com/group/outreachy-kernel/t/d11f3dbed19b3352?utm_s=
ource=3Ddigest&utm_medium=3Demail>
> Shraddha Barke <shraddha.6596@gmail.com>: Oct 02 06:07PM +0530
>
> Remove dump_exports and print_export_data as they are defined
> but not used anywhere.
>
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> --- ...more
> <http://groups.google.com/group/outreachy-kernel/msg/869bfcf8c6b22?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Arnd Bergmann <arnd@arndb.de>: Oct 02 09:44PM +0200
>
> On Friday 02 October 2015 18:07:04 Shraddha Barke wrote:
> > Remove dump_exports and print_export_data as they are defined
> > but not used anywhere.
>
> > Signed-off-by: Shraddha Barke ...more
> <http://groups.google.com/group/outreachy-kernel/msg/881119d57d563?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Back to top <#1502d9dd33172ce2_digest_top>
> [PATCH] staging: octeon: Remove excess parameter from doc
> <http://groups.google.com/group/outreachy-kernel/t/a83c72d84b8c98d5?utm_s=
ource=3Ddigest&utm_medium=3Demail>
> Cristina Moraru <cristina.moraru09@gmail.com>: Oct 02 09:48PM +0300
>
> Fix "Excess function parameter 'addr' description in
> 'cvm_oct_set_mac_filter'" kernel-doc warning
>
> Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> --- ...more
> <http://groups.google.com/group/outreachy-kernel/msg/87dfc5761ea00?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Back to top <#1502d9dd33172ce2_digest_top>
> [PATCH] staging: octeon: Remove bad line
> <http://groups.google.com/group/outreachy-kernel/t/c58f22a999d9a46d?utm_s=
ource=3Ddigest&utm_medium=3Demail>
> Cristina Moraru <cristina.moraru09@gmail.com>: Oct 02 09:47PM +0300
>
> Fix 'bad line' kernel-doc warning
>
> Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> ---
> drivers/staging/octeon/ethernet.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/87def071de10c?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Back to top <#1502d9dd33172ce2_digest_top>
> [PATCH] staging: dgnc: Fix line over 80 characters warning
> <http://groups.google.com/group/outreachy-kernel/t/127f8b4dd83198d2?utm_s=
ource=3Ddigest&utm_medium=3Demail>
> Cristina Moraru <cristina.moraru09@gmail.com>: Oct 02 08:15PM +0300
>
> Fix 'line over 80 characters' checkpatch warning
>
> Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> ---
> drivers/staging/dgnc/dgnc_tty.c | 186
> +++++++++++++++++++++++++++------------- ...more
> <http://groups.google.com/group/outreachy-kernel/msg/878f5a2337e48?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Back to top <#1502d9dd33172ce2_digest_top>
> [PATCH] Staging: board: Fixed the error for implicit declaration of
> function
> <http://groups.google.com/group/outreachy-kernel/t/76f73e3c784589bf?utm_s=
ource=3Ddigest&utm_medium=3Demail>
> Sudip Mukherjee <sudipm.mukherjee@gmail.com>: Oct 02 06:29PM +0530
>
> On Fri, Oct 02, 2015 at 05:01:06AM -0700, Shivani Bhardwaj wrote:
> > I'm doing it wrong. I'm not getting exactly difference between top-post
> and
> > inline way, I've been warned about this before as ...more
> <http://groups.google.com/group/outreachy-kernel/msg/86af146a1c48a?utm_so=
urce=3Ddigest&utm_medium=3Demail>
> Back to top <#1502d9dd33172ce2_digest_top>
> You received this digest because you're subscribed to updates for this
> group. You can change your settings on the group membership page
> <https://groups.google.com/forum/?utm_source=3Ddigest&utm_medium=3Demail#=
!forum/outreachy-kernel/join>
> .
> To unsubscribe from this group and stop receiving emails from it send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
>

--001a11393efac5d3af0521337a75
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><span class=3D"">Hello,<span class=3D""></span></span=
><span class=3D"">
 <br>I am an Undergraduate student from India pursing Bachelors of=20
technology in computer science.I would like to contribute to the project
 =C2=A0 &quot; nftables based on C and C++ programming &quot; for =C2=A0the=
 =C2=A0upcoming
 outreachy program. Could anyone guide me how =C2=A0I start contributing or=
=20
how i proceed with it ?<span class=3D""></span></span><span class=3D"">Than=
k you,<br></span></div><span class=3D"">Anchal Jain<br>
		=09
		</span></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On=
 Sat, Oct 3, 2015 at 5:42 PM,  <span dir=3D"ltr">&lt;<a href=3D"mailto:outr=
eachy-kernel@googlegroups.com" target=3D"_blank">outreachy-kernel@googlegro=
ups.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D=
"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div style=3D"border:1px solid #d3d3d3;max-width:850px;font-family:Arial,sa=
ns-serif;color:#000000">
  <div style=3D"background-color:#f5f5f5;padding:10px 20px">
    <table style=3D"width:100%" cellpadding=3D"0" cellspacing=3D"0">
      <tbody>
        <tr>
          <td style=3D"width:70%">
            <span style=3D"font:18px/20px arial;color:#333333">
              <a href=3D"https://groups.google.com/forum/?utm_source=3Ddige=
st&amp;utm_medium=3Demail#!forum/outreachy-kernel/topics" style=3D"text-dec=
oration:none;color:#333333" target=3D"_blank">
              outreachy-kernel@googlegroups.com</a>
            </span>
          </td>
          <td style=3D"text-align:right;width:30%">
            <span style=3D"font:20px/24px arial"><a style=3D"color:#dd4b39;=
text-decoration:none" href=3D"https://groups.google.com/forum/?utm_source=
=3Ddigest&amp;utm_medium=3Demail/#!overview" target=3D"_blank">Google Group=
s</a></span>
          </td>
          <td style=3D"width:32px">
            <a href=3D"https://groups.google.com/forum/?utm_source=3Ddigest=
&amp;utm_medium=3Demail/#!overview" target=3D"_blank"><img style=3D"border:=
0;vertical-align:middle" src=3D"http://www.google.com/images/icons/product/=
groups-32.png"></a>
          </td>
        </tr>
      </tbody>
    </table>
  </div>
  <div style=3D"padding:20px;background-color:#f5f5f5">


<div style=3D"font-family:arial;color:#222222;padding:0px">
  <a name=3D"1502d9dd33172ce2_digest_top" style=3D"font-size:21px">
 =20
    Today&#39;s topic summary
 =20
 =20
  </a><br>
  <span style=3D"font-size:11px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"https://groups.=
google.com/forum/?utm_source=3Ddigest&amp;utm_medium=3Demail#!forum/outreac=
hy-kernel/topics" target=3D"_blank">View all topics</a>
  </span>
</div>
<div style=3D"font:13px/18px arial;color:#222222;padding:0px;margin-bottom:=
30px">
  <ul style=3D"margin-left:3px;padding-left:0px">
 =20
    <li>
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1502d9dd3317=
2ce2_group_thread_0">
      [PATCH] Staging: most: Use module_platform_driver</a> -
      <span style=3D"color:#777777">1 Update</span>
    </li>
 =20
    <li>
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1502d9dd3317=
2ce2_group_thread_1">
      [PATCH] Staging: panel: Replace NULL comparison.</a> -
      <span style=3D"color:#777777">5 Updates</span>
    </li>
 =20
    <li>
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1502d9dd3317=
2ce2_group_thread_2">
      [PATCH] staging: octeon: Switch unnecessary /** to /*</a> -
      <span style=3D"color:#777777">3 Updates</span>
    </li>
 =20
    <li>
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1502d9dd3317=
2ce2_group_thread_3">
      [PATCH] Staging: clocking-wizard: Use devm_kasprintf</a> -
      <span style=3D"color:#777777">4 Updates</span>
    </li>
 =20
    <li>
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1502d9dd3317=
2ce2_group_thread_4">
      [PATCH v2 0/4] Use mutex insted of semaphore</a> -
      <span style=3D"color:#777777">7 Updates</span>
    </li>
 =20
    <li>
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1502d9dd3317=
2ce2_group_thread_5">
      [PATCH v4] Staging: olpc_dcon: Replace timespec with ktime_t</a> -
      <span style=3D"color:#777777">5 Updates</span>
    </li>
 =20
    <li>
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1502d9dd3317=
2ce2_group_thread_6">
      [PATCH v2 0/3] use resource managed devm_iio_device_register</a> -
      <span style=3D"color:#777777">1 Update</span>
    </li>
 =20
    <li>
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1502d9dd3317=
2ce2_group_thread_7">
      [PATCH 0/5] Declare functions as static</a> -
      <span style=3D"color:#777777">13 Updates</span>
    </li>
 =20
    <li>
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1502d9dd3317=
2ce2_group_thread_8">
      [PATCH] Staging: lustre: obdclass: Remove unused functions</a> -
      <span style=3D"color:#777777">2 Updates</span>
    </li>
 =20
    <li>
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1502d9dd3317=
2ce2_group_thread_9">
      [PATCH] staging: octeon: Remove excess parameter from doc</a> -
      <span style=3D"color:#777777">1 Update</span>
    </li>
 =20
    <li>
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1502d9dd3317=
2ce2_group_thread_10">
      [PATCH] staging: octeon: Remove bad line</a> -
      <span style=3D"color:#777777">1 Update</span>
    </li>
 =20
    <li>
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1502d9dd3317=
2ce2_group_thread_11">
      [PATCH] staging: dgnc: Fix line over 80 characters warning</a> -
      <span style=3D"color:#777777">1 Update</span>
    </li>
 =20
    <li>
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1502d9dd3317=
2ce2_group_thread_12">
      [PATCH] Staging: board: Fixed the error for implicit declaration of f=
unction</a> -
      <span style=3D"color:#777777">1 Update</span>
    </li>
 =20
  </ul>
</div>



 =20
  <a name=3D"1502d9dd33172ce2_group_thread_0"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/824eb23072=
772fba?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;=
color:#1155cc;text-decoration:none" target=3D"_blank">
      [PATCH] Staging: most: Use module_platform_driver
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shraddha Barke &lt;<a href=3D"mailto:shraddha.6596@gmail.com" targe=
t=3D"_blank">shraddha.6596@gmail.com</a>&gt;: Oct 03 05:31PM +0530
      </span>
      <br><br>
      Use module_platform_driver for drivers whose init and exit functions<=
br>
only register and unregister, respectively. Thus remove some<br>
boilerplate code.<br>
=C2=A0<br>
A simplified version of Coccinelle patch -<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/8b6=
6166281845?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1502d9dd33172c=
e2_digest_top">Back to top</a>
  </div>


 =20
  <a name=3D"1502d9dd33172ce2_group_thread_1"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/68460a50a1=
f0abb7?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;=
color:#1155cc;text-decoration:none" target=3D"_blank">
      [PATCH] Staging: panel: Replace NULL comparison.
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Aybuke Ozdemir &lt;<a href=3D"mailto:aybuke.147@gmail.com" target=
=3D"_blank">aybuke.147@gmail.com</a>&gt;: Oct 03 01:28AM +0300
      </span>
      <br><br>
      This patch using NULL checks instead of &quot;!&quot; operator in pan=
el.c<br>
Addresses <a href=3D"http://checkpatch.pl" target=3D"_blank">checkpatch.pl<=
/a> check:<br>
CHECK: Comparison to NULL could be written *.<br>
=C2=A0<br>
Signed-off-by: Aybuke Ozdemir &lt;<a href=3D"mailto:aybuke.147@gmail.com" t=
arget=3D"_blank">aybuke.147@gmail.com</a>&gt;
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/88a=
0b99f447fe?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"=
_blank">julia.lawall@lip6.fr</a>&gt;: Oct 03 08:12AM +0200
      </span>
      <br><br>
     =20
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/8a3=
54f35a35e8?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Aybuke Ozdemir &lt;<a href=3D"mailto:aybuke.147@gmail.com" target=
=3D"_blank">aybuke.147@gmail.com</a>&gt;: Oct 03 02:15PM +0300
      </span>
      <br><br>
      Use ! operating instead of NULL checks.<br>
Addresses <a href=3D"http://checkpatch.pl" target=3D"_blank">checkpatch.pl<=
/a> check:<br>
CHECK: Comparison to NULL could be written &quot;lcd_char_conv&quot;.<br>
=C2=A0<br>
Signed-off-by: Aybuke Ozdemir &lt;<a href=3D"mailto:aybuke.147@gmail.com" t=
arget=3D"_blank">aybuke.147@gmail.com</a>&gt;<br>
---
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/8b3=
dafcc450c6?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"=
_blank">julia.lawall@lip6.fr</a>&gt;: Oct 03 01:26PM +0200
      </span>
      <br><br>
     =20
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/8b4=
6fcf326829?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Aybuke Ozdemir &lt;<a href=3D"mailto:aybuke.147@gmail.com" target=
=3D"_blank">aybuke.147@gmail.com</a>&gt;: Oct 03 02:52PM +0300
      </span>
      <br><br>
      Use ! operating instead of NULL checks.<br>
Addresses &quot;CHECK: Comparison to NULL&quot; from <a href=3D"http://chec=
kpatch.pl" target=3D"_blank">checkpatch.pl</a>.<br>
=C2=A0<br>
Signed-off-by: Aybuke Ozdemir &lt;<a href=3D"mailto:aybuke.147@gmail.com" t=
arget=3D"_blank">aybuke.147@gmail.com</a>&gt;<br>
---<br>
Changes since v1:<br>
* change commit
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/8b5=
dffae1559c?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1502d9dd33172c=
e2_digest_top">Back to top</a>
  </div>


 =20
  <a name=3D"1502d9dd33172ce2_group_thread_2"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/86b61c6c58=
a20ac5?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;=
color:#1155cc;text-decoration:none" target=3D"_blank">
      [PATCH] staging: octeon: Switch unnecessary /** to /*
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Cristina Moraru &lt;<a href=3D"mailto:cristina.moraru09@gmail.com" =
target=3D"_blank">cristina.moraru09@gmail.com</a>&gt;: Oct 02 09:49PM +0300
      </span>
      <br><br>
      Fix kernel-doc comment used as regular comment.<br>
Fix &#39;cannot understand function prototype&#39; Warning<br>
=C2=A0<br>
Signed-off-by: Cristina Moraru &lt;<a href=3D"mailto:cristina.moraru09@gmai=
l.com" target=3D"_blank">cristina.moraru09@gmail.com</a>&gt;<br>
---
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/87e=
1419864dae?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"=
_blank">julia.lawall@lip6.fr</a>&gt;: Oct 02 10:26PM +0200
      </span>
      <br><br>
     =20
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/883=
5785065178?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Cristina-Gabriela Moraru &lt;<a href=3D"mailto:cristina.moraru09@gm=
ail.com" target=3D"_blank">cristina.moraru09@gmail.com</a>&gt;: Oct 03 02:4=
9PM +0300
      </span>
      <br><br>
      Yes, I changed &quot;/**&quot; to &quot;/*&quot; where &quot;/**&quot=
; was used in regular comments and<br>
not kernel-doc comments.<br>
=C2=A0<br>
For example, the code:<br>
&gt; * cvm_oct_poll_queue - Workqueue for polling operations.<br>
&gt; */
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/8b5=
b2be72712f?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1502d9dd33172c=
e2_digest_top">Back to top</a>
  </div>


 =20
  <a name=3D"1502d9dd33172ce2_group_thread_3"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/f47635ade9=
4c6b20?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;=
color:#1155cc;text-decoration:none" target=3D"_blank">
      [PATCH] Staging: clocking-wizard: Use devm_kasprintf
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shraddha Barke &lt;<a href=3D"mailto:shraddha.6596@gmail.com" targe=
t=3D"_blank">shraddha.6596@gmail.com</a>&gt;: Oct 03 12:28AM +0530
      </span>
      <br><br>
      Use devm_kasprintf instead of kasprintf and remove various<br>
gotos by direct returns. Also, drop labels err_rm_int_clks,<br>
err_rm_int_clk and err_disable_clk as they are not used anymore.<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/87e=
87eceafcf9?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Arnd Bergmann &lt;<a href=3D"mailto:arnd@arndb.de" target=3D"_blank=
">arnd@arndb.de</a>&gt;: Oct 02 11:13PM +0200
      </span>
      <br><br>
      On Saturday 03 October 2015 00:28:03 Shraddha Barke wrote:<br>
&gt; -err_disable_clk:<br>
&gt; -       clk_disable_unprepare(clk_wzrd-&gt;axi_clk);<br>
&gt; -<br>
=C2=A0<br>
Are you sure you can remove all of these?<br>
=C2=A0<br>
	Arnd<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/885=
f0d8f27325?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"=
_blank">julia.lawall@lip6.fr</a>&gt;: Oct 02 11:57PM +0200
      </span>
      <br><br>
     =20
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/888=
51ccc4eea6?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shraddha Barke &lt;<a href=3D"mailto:shraddha.6596@gmail.com" targe=
t=3D"_blank">shraddha.6596@gmail.com</a>&gt;: Oct 03 02:05PM +0530
      </span>
      <br><br>
     =20
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/8ab=
2a31546fbe?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1502d9dd33172c=
e2_digest_top">Back to top</a>
  </div>


 =20
  <a name=3D"1502d9dd33172ce2_group_thread_4"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/ad9f978b27=
b68e1f?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;=
color:#1155cc;text-decoration:none" target=3D"_blank">
      [PATCH v2 0/4] Use mutex insted of semaphore
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Ksenija Stanojevic &lt;<a href=3D"mailto:ksenija.stanojevic@gmail.c=
om" target=3D"_blank">ksenija.stanojevic@gmail.com</a>&gt;: Oct 02 10:02PM =
+0200
      </span>
      <br><br>
      This patchset replaces binary semaphore with mutex in comedi drivers.=
<br>
=C2=A0<br>
Signed-off-by: Ksenija Stanojevic &lt;<a href=3D"mailto:ksenija.stanojevic@=
gmail.com" target=3D"_blank">ksenija.stanojevic@gmail.com</a>&gt;<br>
=C2=A0<br>
Ksenija Stanojevic (4):<br>
  Staging: comedi: Use mutex
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/882=
078aa52ce3?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Ksenija Stanojevic &lt;<a href=3D"mailto:ksenija.stanojevic@gmail.c=
om" target=3D"_blank">ksenija.stanojevic@gmail.com</a>&gt;: Oct 02 10:04PM =
+0200
      </span>
      <br><br>
      Replace binary semaphore with mutex because mutex gives better<br>
performance.<br>
This change is safe because the thread that decrements the value of semapho=
re<br>
is also the one that increments it, and
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/882=
260d5b2b43?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Ksenija Stanojevic &lt;<a href=3D"mailto:ksenija.stanojevic@gmail.c=
om" target=3D"_blank">ksenija.stanojevic@gmail.com</a>&gt;: Oct 02 10:05PM =
+0200
      </span>
      <br><br>
      Replace binary semaphore with mutex because mutex gives better<br>
performance.<br>
This change is safe because the thread that decrements the value of semapho=
re<br>
is also the one that increments it, and
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/882=
3c6d457524?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Ksenija Stanojevic &lt;<a href=3D"mailto:ksenija.stanojevic@gmail.c=
om" target=3D"_blank">ksenija.stanojevic@gmail.com</a>&gt;: Oct 02 10:07PM =
+0200
      </span>
      <br><br>
      Replace binary semaphore with mutex because mutex gives better<br>
performance.<br>
This change is safe because the thread that decrements the value of semapho=
re<br>
is also the one that increments it, and
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/882=
58cad00305?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Ksenija Stanojevic &lt;<a href=3D"mailto:ksenija.stanojevic@gmail.c=
om" target=3D"_blank">ksenija.stanojevic@gmail.com</a>&gt;: Oct 02 10:09PM =
+0200
      </span>
      <br><br>
      Replace binary semaphore with mutex because mutex gives better<br>
performance.<br>
This change is safe because the thread that decrements the value of semapho=
re<br>
is also the one that increments it, and
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/882=
7107b75d48?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Arnd Bergmann &lt;<a href=3D"mailto:arnd@arndb.de" target=3D"_blank=
">arnd@arndb.de</a>&gt;: Oct 02 10:52PM +0200
      </span>
      <br><br>
      On Friday 02 October 2015 22:04:22 Ksenija Stanojevic wrote:<br>
&gt; is also the one that increments it, and acts like a mutex where owner =
of the<br>
&gt; lock is the only one that can release the lock.<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/884=
be2b4e23a4?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"=
_blank">julia.lawall@lip6.fr</a>&gt;: Oct 03 10:11AM +0200
      </span>
      <br><br>
     =20
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/8a9=
d555f60be6?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1502d9dd33172c=
e2_digest_top">Back to top</a>
  </div>


 =20
  <a name=3D"1502d9dd33172ce2_group_thread_5"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/5ffb5cdc3d=
df4b78?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;=
color:#1155cc;text-decoration:none" target=3D"_blank">
      [PATCH v4] Staging: olpc_dcon: Replace timespec with ktime_t
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Ksenija Stanojevic &lt;<a href=3D"mailto:ksenija.stanojevic@gmail.c=
om" target=3D"_blank">ksenija.stanojevic@gmail.com</a>&gt;: Oct 02 07:24PM =
+0200
      </span>
      <br><br>
      Struct timespec will overflow in year 2038, here it will not cause an=
<br>
overflow because it is used with timespec_sub, but still has to be<br>
removed as part of y2038 changes. Replace it with ktime_t.
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/879=
6744bfeecb?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Sudip Mukherjee &lt;<a href=3D"mailto:sudipm.mukherjee@gmail.com" t=
arget=3D"_blank">sudipm.mukherjee@gmail.com</a>&gt;: Oct 03 11:29AM +0530
      </span>
      <br><br>
      On Fri, Oct 02, 2015 at 07:24:05PM +0200, Ksenija Stanojevic wrote:<b=
r>
&gt; ---<br>
&gt; Changes in v4:<br>
&gt; 	-fix <a href=3D"http://checkpatch.pl" target=3D"_blank">checkpatch.pl=
</a> errors/warnings introduced by changes made<br>
You missed one more checkpatch warning.
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/8a2=
9b3b3f9f43?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        &quot;Ksenija Stanojevi=C4=87&quot; &lt;<a href=3D"mailto:ksenija.s=
tanojevic@gmail.com" target=3D"_blank">ksenija.stanojevic@gmail.com</a>&gt;=
: Oct 03 08:05AM +0200
      </span>
      <br><br>
      Hi Sudip,<br>
=C2=A0<br>
On Sat, Oct 3, 2015 at 7:59 AM, Sudip Mukherjee<br>
&gt;&gt;                       break;<br>
&gt;&gt;               }<br>
&gt; braces are not required for single statement if block.<br>
=C2=A0<br>
I didn&#39;t know whether
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/8a2=
ee9d39e0f1?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"=
_blank">julia.lawall@lip6.fr</a>&gt;: Oct 03 08:18AM +0200
      </span>
      <br><br>
     =20
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/8a3=
aa857a7028?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Sudip Mukherjee &lt;<a href=3D"mailto:sudipm.mukherjee@gmail.com" t=
arget=3D"_blank">sudipm.mukherjee@gmail.com</a>&gt;: Oct 03 12:09PM +0530
      </span>
      <br><br>
      On Sat, Oct 03, 2015 at 08:05:16AM +0200, Ksenija Stanojevi=C4=87 wro=
te:<br>
=C2=A0<br>
&gt; I didn&#39;t know whether snould I change that or not, because that ch=
ange is maybe<br>
&gt; for another  patch?<br>
&gt; Should I fix it  and
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/8a4=
cf1d15ba43?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1502d9dd33172c=
e2_digest_top">Back to top</a>
  </div>


 =20
  <a name=3D"1502d9dd33172ce2_group_thread_6"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/66f564fda9=
abaf1f?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;=
color:#1155cc;text-decoration:none" target=3D"_blank">
      [PATCH v2 0/3] use resource managed devm_iio_device_register
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Arnd Bergmann &lt;<a href=3D"mailto:arnd@arndb.de" target=3D"_blank=
">arnd@arndb.de</a>&gt;: Oct 02 11:28PM +0200
      </span>
      <br><br>
      On Friday 02 October 2015 13:37:47 Ioana Ciornei wrote:<br>
&gt; only unregisters the device. Since an iio_dev registered with this fun=
ction is<br>
&gt; automatically unregistered on driver detach there is no
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/886=
b60c2a4de5?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1502d9dd33172c=
e2_digest_top">Back to top</a>
  </div>


 =20
  <a name=3D"1502d9dd33172ce2_group_thread_7"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/2b9fc9c6f4=
9a6aa8?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;=
color:#1155cc;text-decoration:none" target=3D"_blank">
      [PATCH 0/5] Declare functions as static
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shraddha Barke &lt;<a href=3D"mailto:shraddha.6596@gmail.com" targe=
t=3D"_blank">shraddha.6596@gmail.com</a>&gt;: Oct 02 11:19PM +0530
      </span>
      <br><br>
      These patches declare the functions and structures which are not<br>
used anywhere else as static.<br>
=C2=A0<br>
=C2=A0<br>
Shraddha Barke (5):<br>
  Staging: lustre: obdclass: cl_io: Declare as static<br>
  Staging: lustre:
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/87a=
c764ab2634?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shraddha Barke &lt;<a href=3D"mailto:shraddha.6596@gmail.com" targe=
t=3D"_blank">shraddha.6596@gmail.com</a>&gt;: Oct 02 11:19PM +0530
      </span>
      <br><br>
      Declare cl_lock_intransit and cl_lock_extransit as static since they<=
br>
are used only in this particular file.<br>
=C2=A0<br>
Signed-off-by: Shraddha Barke &lt;<a href=3D"mailto:shraddha.6596@gmail.com=
" target=3D"_blank">shraddha.6596@gmail.com</a>&gt;<br>
---
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/87a=
c890def72d?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shraddha Barke &lt;<a href=3D"mailto:shraddha.6596@gmail.com" targe=
t=3D"_blank">shraddha.6596@gmail.com</a>&gt;: Oct 02 11:19PM +0530
      </span>
      <br><br>
      Declare class_add_conn, class_add_profile, class_cleanup,<br>
class_config_parse_rec, class_del_conn, class_detach, class_match_param,<br=
>
class_attach, class_setup as static since they are used only in
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/87a=
c963148fe1?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shraddha Barke &lt;<a href=3D"mailto:shraddha.6596@gmail.com" targe=
t=3D"_blank">shraddha.6596@gmail.com</a>&gt;: Oct 02 11:19PM +0530
      </span>
      <br><br>
      Declare class_get_type and class_search_type as static since they<br>
are used only in this particular file. Also remove the declaration<br>
from header files.<br>
=C2=A0<br>
Signed-off-by: Shraddha Barke
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/87a=
ca1f979f03?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shraddha Barke &lt;<a href=3D"mailto:shraddha.6596@gmail.com" targe=
t=3D"_blank">shraddha.6596@gmail.com</a>&gt;: Oct 02 11:19PM +0530
      </span>
      <br><br>
      Declare class_resolve_dev_name as static it is not used anywhere<br>
apart from this particular file.Also remove the declaration<br>
from header file<br>
=C2=A0<br>
Signed-off-by: Shraddha Barke
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/87a=
cab344af8c?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shraddha Barke &lt;<a href=3D"mailto:shraddha.6596@gmail.com" targe=
t=3D"_blank">shraddha.6596@gmail.com</a>&gt;: Oct 02 11:19PM +0530
      </span>
      <br><br>
      Declare cl_page_list_assume, cl_io_cancel, cl_io_rw_advance,<br>
cl_page_list_del, cl_page_list_discard, cl_page_list_fini as<br>
static since they are used only in this particular file.<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/87a=
cc80ace7d9?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Arnd Bergmann &lt;<a href=3D"mailto:arnd@arndb.de" target=3D"_blank=
">arnd@arndb.de</a>&gt;: Oct 02 10:25PM +0200
      </span>
      <br><br>
      On Friday 02 October 2015 23:19:10 Shraddha Barke wrote:<br>
&gt; static since they are used only in this particular file.<br>
&gt; Also remove them from corresponding header files<br>
=C2=A0<br>
&gt; Signed-off-by: Shraddha
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/883=
526a9692d3?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Arnd Bergmann &lt;<a href=3D"mailto:arnd@arndb.de" target=3D"_blank=
">arnd@arndb.de</a>&gt;: Oct 02 10:36PM +0200
      </span>
      <br><br>
      On Friday 02 October 2015 23:19:11 Shraddha Barke wrote:<br>
&gt; ---<br>
&gt;  drivers/staging/lustre/lustre/obdclass/cl_lock.c | 10 ++++------<br>
&gt;  1 file changed, 4 insertions(+), 6 deletions(-)<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/883=
e691af19e8?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Arnd Bergmann &lt;<a href=3D"mailto:arnd@arndb.de" target=3D"_blank=
">arnd@arndb.de</a>&gt;: Oct 02 10:38PM +0200
      </span>
      <br><br>
      On Friday 02 October 2015 23:19:12 Shraddha Barke wrote:<br>
&gt; particular file. Also remove the corresponding declarations from<br>
&gt; header files.<br>
=C2=A0<br>
&gt; Signed-off-by: Shraddha Barke
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/883=
fb8d96b227?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Arnd Bergmann &lt;<a href=3D"mailto:arnd@arndb.de" target=3D"_blank=
">arnd@arndb.de</a>&gt;: Oct 02 10:45PM +0200
      </span>
      <br><br>
      On Friday 02 October 2015 23:19:13 Shraddha Barke wrote:<br>
&gt;  void class_put_type(struct obd_type *type);<br>
&gt;  int class_connect(struct lustre_handle *conn, struct obd_device *obd,=
<br>
&gt;                 =20
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/884=
6390f3fb0d?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Arnd Bergmann &lt;<a href=3D"mailto:arnd@arndb.de" target=3D"_blank=
">arnd@arndb.de</a>&gt;: Oct 02 10:47PM +0200
      </span>
      <br><br>
      On Friday 02 October 2015 23:19:14 Shraddha Barke wrote:<br>
&gt; apart from this particular file.Also remove the declaration<br>
&gt; from header file<br>
=C2=A0<br>
&gt; Signed-off-by: Shraddha Barke &lt;<a href=3D"mailto:shraddha.6596@gmai=
l.com" target=3D"_blank">shraddha.6596@gmail.com</a>&gt;
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/884=
788eba1fef?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shraddha Barke &lt;<a href=3D"mailto:shraddha.6596@gmail.com" targe=
t=3D"_blank">shraddha.6596@gmail.com</a>&gt;: Oct 03 02:21AM +0530
      </span>
      <br><br>
     =20
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/884=
b39fb40840?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Arnd Bergmann &lt;<a href=3D"mailto:arnd@arndb.de" target=3D"_blank=
">arnd@arndb.de</a>&gt;: Oct 02 10:54PM +0200
      </span>
      <br><br>
      On Saturday 03 October 2015 02:21:10 Shraddha Barke wrote:<br>
=C2=A0<br>
&gt; Yes that would normally happen. But the declarations for these were <b=
r>
&gt; removed in another patch 4 days ago.
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/884=
e25108238c?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1502d9dd33172c=
e2_digest_top">Back to top</a>
  </div>


 =20
  <a name=3D"1502d9dd33172ce2_group_thread_8"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/d11f3dbed1=
9b3352?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;=
color:#1155cc;text-decoration:none" target=3D"_blank">
      [PATCH] Staging: lustre: obdclass: Remove unused functions
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shraddha Barke &lt;<a href=3D"mailto:shraddha.6596@gmail.com" targe=
t=3D"_blank">shraddha.6596@gmail.com</a>&gt;: Oct 02 06:07PM +0530
      </span>
      <br><br>
      Remove dump_exports and print_export_data as they are defined<br>
but not used anywhere.<br>
=C2=A0<br>
Signed-off-by: Shraddha Barke &lt;<a href=3D"mailto:shraddha.6596@gmail.com=
" target=3D"_blank">shraddha.6596@gmail.com</a>&gt;<br>
---
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/869=
bfcf8c6b22?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Arnd Bergmann &lt;<a href=3D"mailto:arnd@arndb.de" target=3D"_blank=
">arnd@arndb.de</a>&gt;: Oct 02 09:44PM +0200
      </span>
      <br><br>
      On Friday 02 October 2015 18:07:04 Shraddha Barke wrote:<br>
&gt; Remove dump_exports and print_export_data as they are defined<br>
&gt; but not used anywhere.<br>
=C2=A0<br>
&gt; Signed-off-by: Shraddha Barke
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/881=
119d57d563?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1502d9dd33172c=
e2_digest_top">Back to top</a>
  </div>


 =20
  <a name=3D"1502d9dd33172ce2_group_thread_9"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/a83c72d84b=
8c98d5?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;=
color:#1155cc;text-decoration:none" target=3D"_blank">
      [PATCH] staging: octeon: Remove excess parameter from doc
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Cristina Moraru &lt;<a href=3D"mailto:cristina.moraru09@gmail.com" =
target=3D"_blank">cristina.moraru09@gmail.com</a>&gt;: Oct 02 09:48PM +0300
      </span>
      <br><br>
      Fix &quot;Excess function parameter &#39;addr&#39; description in<br>
&#39;cvm_oct_set_mac_filter&#39;&quot; kernel-doc warning<br>
=C2=A0<br>
Signed-off-by: Cristina Moraru &lt;<a href=3D"mailto:cristina.moraru09@gmai=
l.com" target=3D"_blank">cristina.moraru09@gmail.com</a>&gt;<br>
---
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/87d=
fc5761ea00?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1502d9dd33172c=
e2_digest_top">Back to top</a>
  </div>


 =20
  <a name=3D"1502d9dd33172ce2_group_thread_10"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/c58f22a999=
d9a46d?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;=
color:#1155cc;text-decoration:none" target=3D"_blank">
      [PATCH] staging: octeon: Remove bad line
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Cristina Moraru &lt;<a href=3D"mailto:cristina.moraru09@gmail.com" =
target=3D"_blank">cristina.moraru09@gmail.com</a>&gt;: Oct 02 09:47PM +0300
      </span>
      <br><br>
      Fix &#39;bad line&#39; kernel-doc warning<br>
=C2=A0<br>
Signed-off-by: Cristina Moraru &lt;<a href=3D"mailto:cristina.moraru09@gmai=
l.com" target=3D"_blank">cristina.moraru09@gmail.com</a>&gt;<br>
---<br>
 drivers/staging/octeon/ethernet.c | 2 +-<br>
 1 file changed, 1 insertion(+), 1 deletion(-)<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/87d=
ef071de10c?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1502d9dd33172c=
e2_digest_top">Back to top</a>
  </div>


 =20
  <a name=3D"1502d9dd33172ce2_group_thread_11"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/127f8b4dd8=
3198d2?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;=
color:#1155cc;text-decoration:none" target=3D"_blank">
      [PATCH] staging: dgnc: Fix line over 80 characters warning
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Cristina Moraru &lt;<a href=3D"mailto:cristina.moraru09@gmail.com" =
target=3D"_blank">cristina.moraru09@gmail.com</a>&gt;: Oct 02 08:15PM +0300
      </span>
      <br><br>
      Fix &#39;line over 80 characters&#39; checkpatch warning<br>
=C2=A0<br>
Signed-off-by: Cristina Moraru &lt;<a href=3D"mailto:cristina.moraru09@gmai=
l.com" target=3D"_blank">cristina.moraru09@gmail.com</a>&gt;<br>
---<br>
 drivers/staging/dgnc/dgnc_tty.c | 186 +++++++++++++++++++++++++++---------=
----
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/878=
f5a2337e48?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1502d9dd33172c=
e2_digest_top">Back to top</a>
  </div>


 =20
  <a name=3D"1502d9dd33172ce2_group_thread_12"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/76f73e3c78=
4589bf?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;=
color:#1155cc;text-decoration:none" target=3D"_blank">
      [PATCH] Staging: board: Fixed the error for implicit declaration of f=
unction
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Sudip Mukherjee &lt;<a href=3D"mailto:sudipm.mukherjee@gmail.com" t=
arget=3D"_blank">sudipm.mukherjee@gmail.com</a>&gt;: Oct 02 06:29PM +0530
      </span>
      <br><br>
      On Fri, Oct 02, 2015 at 05:01:06AM -0700, Shivani Bhardwaj wrote:<br>
&gt; I&#39;m doing it wrong. I&#39;m not getting exactly difference between=
 top-post and <br>
&gt; inline way, I&#39;ve been warned about this before as
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/86a=
f146a1c48a?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1502d9dd33172c=
e2_digest_top">Back to top</a>
  </div>




  </div>
  <div style=3D"background-color:#f5f5f5;padding:5px 20px">
  <table style=3D"width:100%" cellpadding=3D"0" cellspacing=3D"0">
  <tbody><tr>
    <td style=3D"padding-top:4px;font-family:arial,sans-serif;color:#636363=
;font-size:11px">
     =20
      You received this digest because you&#39;re subscribed to updates for=
 this group. You can change your settings on the <a href=3D"https://groups.=
google.com/forum/?utm_source=3Ddigest&amp;utm_medium=3Demail#!forum/outreac=
hy-kernel/join" style=3D"color:#1155cc;text-decoration:none" target=3D"_bla=
nk">group membership page</a>.<br>
      To unsubscribe from this group and stop receiving emails from it send=
 an email to <a href=3D"mailto:outreachy-kernel+unsubscribe@googlegroups.co=
m" target=3D"_blank">outreachy-kernel+unsubscribe@googlegroups.com</a>.
    </td>
  </tr></tbody>
  </table>
  </div>
</div>

</blockquote></div><br></div>

--001a11393efac5d3af0521337a75--

