X-GM-THRID: 6201416827820572672
X-Received: by 10.129.159.71 with SMTP id w68mr16872134ywg.28.1443880391825;
        Sat, 03 Oct 2015 06:53:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.97.2 with SMTP id l2ls2160130qge.36.gmail; Sat, 03 Oct
 2015 06:53:11 -0700 (PDT)
X-Received: by 10.129.146.87 with SMTP id j84mr17416531ywg.18.1443880391413;
        Sat, 03 Oct 2015 06:53:11 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id w5si2305973pbt.1.2015.10.03.06.53.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Oct 2015 06:53:11 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pacfv12 with SMTP id fv12so134954787pac.2
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Oct 2015 06:53:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:content-type;
        bh=4u5YGuDkYWymlWtWbxUvnt1UdRv6KF5cT+gVYcDDt/s=;
        b=lrYH/WeOhGrUwsZuUHstrX1naoO567FCUNg0vO6+lVwl79raJc6qc1jdp+3nQPb1bp
         h0bhD6hJTYhexnplUXggFpwBS1RwwLlz+8owgSuUNv54SGMi5FedVr5NP+fJAY9FtkYm
         SQ++Op4Ofsv8Ex0c2HB5fpf7//BSFUlhtMLZF6itpLGcDBSMvkSuHYVq8anjIAS7AlK2
         rilZQa6XVtiM06t80jRwDWjTwziMyVPJ1A9NFneatLlCyL9tkULrz4cwgBkVb01oXd00
         cYe6h1TiV1pxDk4+LseIFnbqTEPe15qolNcdlHEzvcnPgp5tEiSEhnfaSJgDKUEwAqBD
         /8RA==
X-Received: by 10.66.101.68 with SMTP id fe4mr20667050pab.30.1443880391180;
        Sat, 03 Oct 2015 06:53:11 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.30.0.216] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id rk2sm17620826pbc.75.2015.10.03.06.53.07
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 03 Oct 2015 06:53:10 -0700 (PDT)
Date: Sat, 3 Oct 2015 19:23:04 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
To: Anchal Jain <anchalj109@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Abridged summary of outreachy-kernel@googlegroups.com
 - 45 updates in 13 topics
In-Reply-To: <CAAbeOSuU6NPBW9SmKUZVHo6hx+_fjuyLvqVcBCL3X-e-mcS3ig@mail.gmail.com>
Message-ID: <alpine.DEB.2.11.1510031917420.21988@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <001a114f23b067e91605213230e5@google.com> <CAAbeOSuU6NPBW9SmKUZVHo6hx+_fjuyLvqVcBCL3X-e-mcS3ig@mail.gmail.com>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-1642836483-1443880388=:21988"
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150201.560FDDC5.0092,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1642836483-1443880388=:21988
Content-Type: TEXT/PLAIN; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8BIT



On Sat, 3 Oct 2015, Anchal Jain wrote:

> Hello,
> I am an Undergraduate student from India pursing Bachelors of technology in computer science.I would like to contribute to the project   "
> nftables based on C and C++ programming " for  the  upcoming outreachy program. Could anyone guide me how  I start contributing or how i
> proceed with it ?Thank you,
> Anchal Jain

Hi Anchal,

  It would be good to start using it to familiarize yourself with nftables. 
The project page has good documentation

Once you get an idea about it, there's a list of problems in bugzilla -
http://bugzilla.netfilter.org/buglist.cgi?bug_status=__open__&list_id=281&order=Importance&product=nftables&query_format=specific

I'm just telling what I know. I'm sure you'll get other comments.

Shraddha

> 
> On Sat, Oct 3, 2015 at 5:42 PM, <outreachy-kernel@googlegroups.com> wrote:
>       outreachy-kernel@googlegroups.com
>       Google Groups
>       [groups-32.png]
> Today's topic summary
> View all topics
>  *  [PATCH] Staging: most: Use module_platform_driver - 1 Update
>  *  [PATCH] Staging: panel: Replace NULL comparison. - 5 Updates
>  *  [PATCH] staging: octeon: Switch unnecessary /** to /* - 3 Updates
>  *  [PATCH] Staging: clocking-wizard: Use devm_kasprintf - 4 Updates
>  *  [PATCH v2 0/4] Use mutex insted of semaphore - 7 Updates
>  *  [PATCH v4] Staging: olpc_dcon: Replace timespec with ktime_t - 5 Updates
>  *  [PATCH v2 0/3] use resource managed devm_iio_device_register - 1 Update
>  *  [PATCH 0/5] Declare functions as static - 13 Updates
>  *  [PATCH] Staging: lustre: obdclass: Remove unused functions - 2 Updates
>  *  [PATCH] staging: octeon: Remove excess parameter from doc - 1 Update
>  *  [PATCH] staging: octeon: Remove bad line - 1 Update
>  *  [PATCH] staging: dgnc: Fix line over 80 characters warning - 1 Update
>  *  [PATCH] Staging: board: Fixed the error for implicit declaration of function - 1 Update
> [PATCH] Staging: most: Use module_platform_driver
> Shraddha Barke <shraddha.6596@gmail.com>: Oct 03 05:31PM +0530
> 
> Use module_platform_driver for drivers whose init and exit functions
> only register and unregister, respectively. Thus remove some
> boilerplate code.
>  
> A simplified version of Coccinelle patch -
> ...more
> Back to top
> [PATCH] Staging: panel: Replace NULL comparison.
> Aybuke Ozdemir <aybuke.147@gmail.com>: Oct 03 01:28AM +0300
> 
> This patch using NULL checks instead of "!" operator in panel.c
> Addresses checkpatch.pl check:
> CHECK: Comparison to NULL could be written *.
>  
> Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com> ...more
> Julia Lawall <julia.lawall@lip6.fr>: Oct 03 08:12AM +0200
> 
> ...more
> Aybuke Ozdemir <aybuke.147@gmail.com>: Oct 03 02:15PM +0300
> 
> Use ! operating instead of NULL checks.
> Addresses checkpatch.pl check:
> CHECK: Comparison to NULL could be written "lcd_char_conv".
>  
> Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
> --- ...more
> Julia Lawall <julia.lawall@lip6.fr>: Oct 03 01:26PM +0200
> 
> ...more
> Aybuke Ozdemir <aybuke.147@gmail.com>: Oct 03 02:52PM +0300
> 
> Use ! operating instead of NULL checks.
> Addresses "CHECK: Comparison to NULL" from checkpatch.pl.
>  
> Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
> ---
> Changes since v1:
> * change commit ...more
> Back to top
> [PATCH] staging: octeon: Switch unnecessary /** to /*
> Cristina Moraru <cristina.moraru09@gmail.com>: Oct 02 09:49PM +0300
> 
> Fix kernel-doc comment used as regular comment.
> Fix 'cannot understand function prototype' Warning
>  
> Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> --- ...more
> Julia Lawall <julia.lawall@lip6.fr>: Oct 02 10:26PM +0200
> 
> ...more
> Cristina-Gabriela Moraru <cristina.moraru09@gmail.com>: Oct 03 02:49PM +0300
> 
> Yes, I changed "/**" to "/*" where "/**" was used in regular comments and
> not kernel-doc comments.
>  
> For example, the code:
> > * cvm_oct_poll_queue - Workqueue for polling operations.
> > */ ...more
> Back to top
> [PATCH] Staging: clocking-wizard: Use devm_kasprintf
> Shraddha Barke <shraddha.6596@gmail.com>: Oct 03 12:28AM +0530
> 
> Use devm_kasprintf instead of kasprintf and remove various
> gotos by direct returns. Also, drop labels err_rm_int_clks,
> err_rm_int_clk and err_disable_clk as they are not used anymore.
> ...more
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
> Julia Lawall <julia.lawall@lip6.fr>: Oct 02 11:57PM +0200
> 
> ...more
> Shraddha Barke <shraddha.6596@gmail.com>: Oct 03 02:05PM +0530
> 
> ...more
> Back to top
> [PATCH v2 0/4] Use mutex insted of semaphore
> Ksenija Stanojevic <ksenija.stanojevic@gmail.com>: Oct 02 10:02PM +0200
> 
> This patchset replaces binary semaphore with mutex in comedi drivers.
>  
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
>  
> Ksenija Stanojevic (4):
> Staging: comedi: Use mutex ...more
> Ksenija Stanojevic <ksenija.stanojevic@gmail.com>: Oct 02 10:04PM +0200
> 
> Replace binary semaphore with mutex because mutex gives better
> performance.
> This change is safe because the thread that decrements the value of semaphore
> is also the one that increments it, and ...more
> Ksenija Stanojevic <ksenija.stanojevic@gmail.com>: Oct 02 10:05PM +0200
> 
> Replace binary semaphore with mutex because mutex gives better
> performance.
> This change is safe because the thread that decrements the value of semaphore
> is also the one that increments it, and ...more
> Ksenija Stanojevic <ksenija.stanojevic@gmail.com>: Oct 02 10:07PM +0200
> 
> Replace binary semaphore with mutex because mutex gives better
> performance.
> This change is safe because the thread that decrements the value of semaphore
> is also the one that increments it, and ...more
> Ksenija Stanojevic <ksenija.stanojevic@gmail.com>: Oct 02 10:09PM +0200
> 
> Replace binary semaphore with mutex because mutex gives better
> performance.
> This change is safe because the thread that decrements the value of semaphore
> is also the one that increments it, and ...more
> Arnd Bergmann <arnd@arndb.de>: Oct 02 10:52PM +0200
> 
> On Friday 02 October 2015 22:04:22 Ksenija Stanojevic wrote:
> > is also the one that increments it, and acts like a mutex where owner of the
> > lock is the only one that can release the lock.
> ...more
> Julia Lawall <julia.lawall@lip6.fr>: Oct 03 10:11AM +0200
> 
> ...more
> Back to top
> [PATCH v4] Staging: olpc_dcon: Replace timespec with ktime_t
> Ksenija Stanojevic <ksenija.stanojevic@gmail.com>: Oct 02 07:24PM +0200
> 
> Struct timespec will overflow in year 2038, here it will not cause an
> overflow because it is used with timespec_sub, but still has to be
> removed as part of y2038 changes. Replace it with ktime_t. ...more
> Sudip Mukherjee <sudipm.mukherjee@gmail.com>: Oct 03 11:29AM +0530
> 
> On Fri, Oct 02, 2015 at 07:24:05PM +0200, Ksenija Stanojevic wrote:
> > ---
> > Changes in v4:
> > -fix checkpatch.pl errors/warnings introduced by changes made
> You missed one more checkpatch warning. ...more
> "Ksenija Stanojević" <ksenija.stanojevic@gmail.com>: Oct 03 08:05AM +0200
> 
> Hi Sudip,
>  
> On Sat, Oct 3, 2015 at 7:59 AM, Sudip Mukherjee
> >> break;
> >> }
> > braces are not required for single statement if block.
>  
> I didn't know whether ...more
> Julia Lawall <julia.lawall@lip6.fr>: Oct 03 08:18AM +0200
> 
> ...more
> Sudip Mukherjee <sudipm.mukherjee@gmail.com>: Oct 03 12:09PM +0530
> 
> On Sat, Oct 03, 2015 at 08:05:16AM +0200, Ksenija Stanojević wrote:
>  
> > I didn't know whether snould I change that or not, because that change is maybe
> > for another patch?
> > Should I fix it and ...more
> Back to top
> [PATCH v2 0/3] use resource managed devm_iio_device_register
> Arnd Bergmann <arnd@arndb.de>: Oct 02 11:28PM +0200
> 
> On Friday 02 October 2015 13:37:47 Ioana Ciornei wrote:
> > only unregisters the device. Since an iio_dev registered with this function is
> > automatically unregistered on driver detach there is no ...more
> Back to top
> [PATCH 0/5] Declare functions as static
> Shraddha Barke <shraddha.6596@gmail.com>: Oct 02 11:19PM +0530
> 
> These patches declare the functions and structures which are not
> used anywhere else as static.
>  
>  
> Shraddha Barke (5):
> Staging: lustre: obdclass: cl_io: Declare as static
> Staging: lustre: ...more
> Shraddha Barke <shraddha.6596@gmail.com>: Oct 02 11:19PM +0530
> 
> Declare cl_lock_intransit and cl_lock_extransit as static since they
> are used only in this particular file.
>  
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> --- ...more
> Shraddha Barke <shraddha.6596@gmail.com>: Oct 02 11:19PM +0530
> 
> Declare class_add_conn, class_add_profile, class_cleanup,
> class_config_parse_rec, class_del_conn, class_detach, class_match_param,
> class_attach, class_setup as static since they are used only in ...more
> Shraddha Barke <shraddha.6596@gmail.com>: Oct 02 11:19PM +0530
> 
> Declare class_get_type and class_search_type as static since they
> are used only in this particular file. Also remove the declaration
> from header files.
>  
> Signed-off-by: Shraddha Barke ...more
> Shraddha Barke <shraddha.6596@gmail.com>: Oct 02 11:19PM +0530
> 
> Declare class_resolve_dev_name as static it is not used anywhere
> apart from this particular file.Also remove the declaration
> from header file
>  
> Signed-off-by: Shraddha Barke ...more
> Shraddha Barke <shraddha.6596@gmail.com>: Oct 02 11:19PM +0530
> 
> Declare cl_page_list_assume, cl_io_cancel, cl_io_rw_advance,
> cl_page_list_del, cl_page_list_discard, cl_page_list_fini as
> static since they are used only in this particular file.
> ...more
> Arnd Bergmann <arnd@arndb.de>: Oct 02 10:25PM +0200
> 
> On Friday 02 October 2015 23:19:10 Shraddha Barke wrote:
> > static since they are used only in this particular file.
> > Also remove them from corresponding header files
>  
> > Signed-off-by: Shraddha ...more
> Arnd Bergmann <arnd@arndb.de>: Oct 02 10:36PM +0200
> 
> On Friday 02 October 2015 23:19:11 Shraddha Barke wrote:
> > ---
> > drivers/staging/lustre/lustre/obdclass/cl_lock.c | 10 ++++------
> > 1 file changed, 4 insertions(+), 6 deletions(-)
> ...more
> Arnd Bergmann <arnd@arndb.de>: Oct 02 10:38PM +0200
> 
> On Friday 02 October 2015 23:19:12 Shraddha Barke wrote:
> > particular file. Also remove the corresponding declarations from
> > header files.
>  
> > Signed-off-by: Shraddha Barke ...more
> Arnd Bergmann <arnd@arndb.de>: Oct 02 10:45PM +0200
> 
> On Friday 02 October 2015 23:19:13 Shraddha Barke wrote:
> > void class_put_type(struct obd_type *type);
> > int class_connect(struct lustre_handle *conn, struct obd_device *obd,
> > ...more
> Arnd Bergmann <arnd@arndb.de>: Oct 02 10:47PM +0200
> 
> On Friday 02 October 2015 23:19:14 Shraddha Barke wrote:
> > apart from this particular file.Also remove the declaration
> > from header file
>  
> > Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com> ...more
> Shraddha Barke <shraddha.6596@gmail.com>: Oct 03 02:21AM +0530
> 
> ...more
> Arnd Bergmann <arnd@arndb.de>: Oct 02 10:54PM +0200
> 
> On Saturday 03 October 2015 02:21:10 Shraddha Barke wrote:
>  
> > Yes that would normally happen. But the declarations for these were
> > removed in another patch 4 days ago. ...more
> Back to top
> [PATCH] Staging: lustre: obdclass: Remove unused functions
> Shraddha Barke <shraddha.6596@gmail.com>: Oct 02 06:07PM +0530
> 
> Remove dump_exports and print_export_data as they are defined
> but not used anywhere.
>  
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> --- ...more
> Arnd Bergmann <arnd@arndb.de>: Oct 02 09:44PM +0200
> 
> On Friday 02 October 2015 18:07:04 Shraddha Barke wrote:
> > Remove dump_exports and print_export_data as they are defined
> > but not used anywhere.
>  
> > Signed-off-by: Shraddha Barke ...more
> Back to top
> [PATCH] staging: octeon: Remove excess parameter from doc
> Cristina Moraru <cristina.moraru09@gmail.com>: Oct 02 09:48PM +0300
> 
> Fix "Excess function parameter 'addr' description in
> 'cvm_oct_set_mac_filter'" kernel-doc warning
>  
> Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> --- ...more
> Back to top
> [PATCH] staging: octeon: Remove bad line
> Cristina Moraru <cristina.moraru09@gmail.com>: Oct 02 09:47PM +0300
> 
> Fix 'bad line' kernel-doc warning
>  
> Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> ---
> drivers/staging/octeon/ethernet.c | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
> ...more
> Back to top
> [PATCH] staging: dgnc: Fix line over 80 characters warning
> Cristina Moraru <cristina.moraru09@gmail.com>: Oct 02 08:15PM +0300
> 
> Fix 'line over 80 characters' checkpatch warning
>  
> Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
> ---
> drivers/staging/dgnc/dgnc_tty.c | 186 +++++++++++++++++++++++++++------------- ...more
> Back to top
> [PATCH] Staging: board: Fixed the error for implicit declaration of function
> Sudip Mukherjee <sudipm.mukherjee@gmail.com>: Oct 02 06:29PM +0530
> 
> On Fri, Oct 02, 2015 at 05:01:06AM -0700, Shivani Bhardwaj wrote:
> > I'm doing it wrong. I'm not getting exactly difference between top-post and
> > inline way, I've been warned about this before as ...more
> Back to top
> You received this digest because you're subscribed to updates for this group. You can change your settings on the group membership
> page.
> To unsubscribe from this group and stop receiving emails from it send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> 
> 
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/CAAbeOSuU6NPBW9SmKUZVHo6hx%2B_fjuyLvqVcBCL3X-e-mcS3ig%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 
>
--8323329-1642836483-1443880388=:21988--

