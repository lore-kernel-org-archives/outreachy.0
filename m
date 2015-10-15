X-GM-THRID: 6205890671650275328
X-Received: by 10.182.240.202 with SMTP id wc10mr8350861obc.9.1444921519291;
        Thu, 15 Oct 2015 08:05:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.38.10 with SMTP id s10ls788986qgs.8.gmail; Thu, 15 Oct
 2015 08:05:18 -0700 (PDT)
X-Received: by 10.129.148.129 with SMTP id l123mr7840375ywg.35.1444921518331;
        Thu, 15 Oct 2015 08:05:18 -0700 (PDT)
Return-Path: <anchalj109@gmail.com>
Received: from mail-yk0-x22d.google.com (mail-yk0-x22d.google.com. [2607:f8b0:4002:c07::22d])
        by gmr-mx.google.com with ESMTPS id d207si983386ywb.4.2015.10.15.08.05.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 08:05:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:4002:c07::22d as permitted sender) client-ip=2607:f8b0:4002:c07::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of anchalj109@gmail.com designates 2607:f8b0:4002:c07::22d as permitted sender) smtp.mailfrom=anchalj109@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x22d.google.com with SMTP id t21so20135890ykd.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 08:05:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :content-type;
        bh=mT7IQ9Frl/pU19XE8hKD65RWWLfvfwHRO1Ahv0XwAKY=;
        b=PKkEeOd1zkskKFEKrmv/Z4bDGRfkmkGY1mnd68SqnHf+jDdQzm23y4lEZhHu711rZI
         hSm158BupTQIcWzTzbsUFMMIlpek6HO7mWulDl0Wbf8g1wu7oC8BzxZEyZE+d+SiDsgB
         N1I4oDNh/VOJzXEsIZMFYH1WBFtBntw04wzyLMh7z7KjyTUUh1zmPIr5zW3x6p4bK/XR
         h3i7cWnyP1urtsqc4h077sVy3kiSa60WzBkfZJUBl2RtbpQMg4euU5neK4/TK3af1Yqa
         6I7opSQ0hhWa9c1IHhzxbXthKQkyePa0W93OpkmfSEzNSz1fprxdbX95zzJZH/dn9Rqf
         an8Q==
MIME-Version: 1.0
X-Received: by 10.13.202.16 with SMTP id m16mr7746727ywd.346.1444921518029;
 Thu, 15 Oct 2015 08:05:18 -0700 (PDT)
Received: by 10.37.81.3 with HTTP; Thu, 15 Oct 2015 08:05:17 -0700 (PDT)
In-Reply-To: <001a114bdc26e9ddee0521fb8a8f@google.com>
References: <001a114bdc26e9ddee0521fb8a8f@google.com>
Date: Thu, 15 Oct 2015 20:35:17 +0530
Message-ID: <CAAbeOStaK+nW6kcWiP61QZW8DsmGuLHAwwW5XmYCXKp0g1Q=TA@mail.gmail.com>
Subject: Re: [Outreachy kernel] Abridged summary of outreachy-kernel@googlegroups.com
 - 100 updates in 21 topics
From: Anchal Jain <anchalj109@gmail.com>
To: outreachy-kernel@googlegroups.com
Content-Type: multipart/alternative; boundary=001a114f00facf845c0522260198

--001a114f00facf845c0522260198
Content-Type: text/plain; charset=UTF-8

I am working on linux kernel . I try to understand on these bug can anyone
help me
http://bugzilla.netfilter.org/show_bug.cgi?id=895#c0

On Tue, Oct 13, 2015 at 5:55 PM, <outreachy-kernel@googlegroups.com> wrote:

> outreachy-kernel@googlegroups.com
> <https://groups.google.com/forum/?utm_source=digest&utm_medium=email#!forum/outreachy-kernel/topics> Google
> Groups
> <https://groups.google.com/forum/?utm_source=digest&utm_medium=email/#!overview>
> <https://groups.google.com/forum/?utm_source=digest&utm_medium=email/#!overview>
> Today's topic summary
> View all topics
> <https://groups.google.com/forum/?utm_source=digest&utm_medium=email#!forum/outreachy-kernel/topics>
>
>    - [PATCH] Staging: wilc1000: Use kzalloc instead of kmalloc and memset
>    <#1506129b9668439c_group_thread_0> - 2 Updates
>    - [PATCH v3 2/9] staging: iio: adc: properly indent to match open
>    paranthesis <#1506129b9668439c_group_thread_1> - 19 Updates
>    - [PATCH] Staging: wilc1000: wilc_wlan: Remove unnecessary cast
>    <#1506129b9668439c_group_thread_2> - 1 Update
>    - [PATCH 0/2] Fix various issues <#1506129b9668439c_group_thread_3> - 4
>    Updates
>    - [PATCH v3 0/3] Fix issues discovered by coccinelle
>    <#1506129b9668439c_group_thread_4> - 9 Updates
>    - [PATCH v2] Staging: wilc1000: wilc_wfi_cfgoperations: Remove
>    unnecessary constants <#1506129b9668439c_group_thread_5> - 3 Updates
>    - [PATCH] Staging: wilc1000: wilc_wfi_cfgoperations: Remove unused code
>    <#1506129b9668439c_group_thread_6> - 2 Updates
>    - [PATCH 0/3] Remove useless cast on void pointer
>    <#1506129b9668439c_group_thread_7> - 12 Updates
>    - [PATCH 1/2] Staging: wilc1000: host_interface: Use kmemdup instead
>    of kmalloc and memcpy <#1506129b9668439c_group_thread_8> - 1 Update
>    - [PATCH] staging: sm750fb: Remove multiple blank lines
>    <#1506129b9668439c_group_thread_9> - 1 Update
>    - sending patch revisions w mutt ???
>    <#1506129b9668439c_group_thread_10> - 2 Updates
>    - [PATCH] staging: lustre: llite: Remove useless cast on void pointer
>    <#1506129b9668439c_group_thread_11> - 1 Update
>    - [PATCH v2] staging: rdma: hfi1: remove unnecessary out of memory
>    messages <#1506129b9668439c_group_thread_12> - 1 Update
>    - [PATCH v2] staging: gdmwm: move variables to right side of
>    comparison test <#1506129b9668439c_group_thread_13> - 1 Update
>    - [PATCH v2] staging: wilc1000: move open brace in line with control
>    flow statement <#1506129b9668439c_group_thread_14> - 1 Update
>    - [PATCH 0/3] Fix issues detected by coccinelle
>    <#1506129b9668439c_group_thread_15> - 25 Updates
>    - [PATCH] Staging: vt6655: mac: Remove extra braces
>    <#1506129b9668439c_group_thread_16> - 2 Updates
>    - [PATCH v4 1/3] Staging: rtl8192u: ieee80211: ieee80211_softmac:
>    Remove commented printk messages <#1506129b9668439c_group_thread_17> - 3
>    Updates
>    - [PATCH v2 1/2] Staging: vt6655: mac: Remove character limit warning
>    <#1506129b9668439c_group_thread_18> - 2 Updates
>    - [PATCH 0/3] Remove NULL check before kfree
>    <#1506129b9668439c_group_thread_19> - 7 Updates
>    - [PATCH] Staging: most: hdm-i2c: Drop owner assignment from i2c driver
>    <#1506129b9668439c_group_thread_20> - 1 Update
>
> [PATCH] Staging: wilc1000: Use kzalloc instead of kmalloc and memset
> <http://groups.google.com/group/outreachy-kernel/t/9106dd04ff835e59?utm_source=digest&utm_medium=email>
> Greg KH <gregkh@linuxfoundation.org>: Oct 12 09:00PM -0700
>
> On Fri, Oct 09, 2015 at 07:01:32PM +0530, Shraddha Barke wrote:
> > ---
> > drivers/staging/wilc1000/host_interface.c | 11 +++--------
> > 1 file changed, 3 insertions(+), 8 deletions(-)
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b3af5636d1d59?utm_source=digest&utm_medium=email>
> Shraddha Barke <shraddha.6596@gmail.com>: Oct 13 05:46PM +0530
>
> Replace kmalloc and memset with a single call to kzalloc.
>
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
> Changes in v2-
> Based on the current staging-testing branch
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b50390e099227?utm_source=digest&utm_medium=email>
> Back to top <#1506129b9668439c_digest_top>
> [PATCH v3 2/9] staging: iio: adc: properly indent to match open
> paranthesis
> <http://groups.google.com/group/outreachy-kernel/t/fc88e7a3b2c59b5c?utm_source=digest&utm_medium=email>
> Daniel Baluta <daniel.baluta@gmail.com>: Oct 12 06:14PM +0300
>
> > - nothing
> > Changes in v3:
> > - rework changes in order to avoid introducing new checkpatch warnings
>
> <snip>
>
> > ad7280_store_balance_sw; ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b0b51c5659369?utm_source=digest&utm_medium=email>
> Daniel Baluta <daniel.baluta@gmail.com>: Oct 12 07:26PM +0300
>
> > Use !condition instead off condition == NULL when comparing with NULL
>
> > Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
>
> Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b0f422c2e07d5?utm_source=digest&utm_medium=email>
> Daniel Baluta <daniel.baluta@gmail.com>: Oct 12 07:31PM +0300
>
> > Remove the space after an explicit cast because there is no
> > point in having it
>
> > Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
>
> Reviewed-by: Daniel Baluta <daniel.baluta@intel.com> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b0f8806d3b1bc?utm_source=digest&utm_medium=email>
> Daniel Baluta <daniel.baluta@gmail.com>: Oct 12 07:38PM +0300
>
>
> > static IIO_DEVICE_ATTR_NAMED(in_v_m_v_scale_available,
> > - in_voltage-voltage_scale_available,
> > + in_voltage - voltage_scale_available,
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b0fe49bf522b0?utm_source=digest&utm_medium=email>
> Daniel Baluta <daniel.baluta@gmail.com>: Oct 12 07:39PM +0300
>
> > Insert a blank line after declarations
>
> > Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
>
> Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b0ff548eb9564?utm_source=digest&utm_medium=email>
> Daniel Baluta <daniel.baluta@gmail.com>: Oct 12 07:40PM +0300
>
> > Remove multiple blank lines since there is no practical reason
> > to have it
>
> > Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
>
> Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b100222a4ab2f?utm_source=digest&utm_medium=email>
> Daniel Baluta <daniel.baluta@gmail.com>: Oct 12 07:50PM +0300
>
> > Remove the use of CamelCase to follow the kernel naming conventions
>
> > Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
>
> Some of this names I think are intended because are easier to read.
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b10956a3ab6ea?utm_source=digest&utm_medium=email>
> Daniel Baluta <daniel.baluta@gmail.com>: Oct 12 07:53PM +0300
>
> > + */
>
> > /* Configuration Register Bit Designations (AD7192_REG_CONF) */
>
> > --
>
> This patch is correct. Anyhow, I think it is better to add the ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b10c0a2432806?utm_source=digest&utm_medium=email>
> Daniel Baluta <daniel.baluta@gmail.com>: Oct 12 07:59PM +0300
>
> > Convert uint32_t to u32 and uint64_t to u64 in order to
> > follow the kernel best practice
>
> > Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
>
> Reviewed-by: Daniel Baluta ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b11161c9eadcc?utm_source=digest&utm_medium=email>
> Ioana Ciornei <ciorneiioana@gmail.com>: Oct 12 10:00PM +0300
>
> > no binary operator
> > here.
>
> > If checkpatch complains about this then it's a false positive.
>
>
> Yes, checkpatch generated a warning and also there were no build errors.
> Sorry about this. ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b17aab2756684?utm_source=digest&utm_medium=email>
> Greg KH <gregkh@linuxfoundation.org>: Oct 12 05:01PM -0700
>
> On Mon, Oct 12, 2015 at 10:00:30PM +0300, Ioana Ciornei wrote:
>
> > > If checkpatch complains about this then it's a false positive.
>
> > Yes, checkpatch generated a warning and also there were no ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b2811a05f8549?utm_source=digest&utm_medium=email>
> Ioana Ciornei <ciorneiioana@gmail.com>: Oct 13 08:47AM +0300
>
> > On Mon, Oct 12, 2015 at 10:00:30PM +0300, Ioana Ciornei wrote:
> >> On Mon, Oct 12, 2015 at 7:38 PM, Daniel Baluta <daniel.baluta@gmail.com
> >
> wrote:
> >> > On Fri, Oct 9, 2015 at 10:51 PM, Ioana ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b3afd02d9f0c1?utm_source=digest&utm_medium=email>
> Ioana Ciornei <ciorneiioana@gmail.com>: Oct 13 12:52PM +0300
>
> > > - kasprintf(GFP_KERNEL,
>
> > This line looks good to me as it is. Is there any particular reason
> > for which you we want GFP_KERNEL to be moved on the next line?
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b485e02d6f116?utm_source=digest&utm_medium=email>
> Julia Lawall <julia.lawall@lip6.fr>: Oct 13 11:56AM +0200
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b48969c74eae1?utm_source=digest&utm_medium=email>
> Ioana Ciornei <ciorneiioana@gmail.com>: Oct 13 01:05PM +0300
>
> > Do the other arguments not fit if they are lines up with the right side
> of
> > the (? Perhaps it is possible to break up the longer arguments more so
> > that they fit better?
>
> The first argument ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b4913fb8d92e3?utm_source=digest&utm_medium=email>
> Julia Lawall <julia.lawall@lip6.fr>: Oct 13 12:19PM +0200
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b49cc88126c96?utm_source=digest&utm_medium=email>
> Sudip Mukherjee <sudipm.mukherjee@gmail.com>: Oct 13 05:21PM +0530
>
> On Tue, Oct 13, 2015 at 01:05:58PM +0300, Ioana Ciornei wrote:
> > If use a variable instead of 'dev * AD7280A_CELLS_PER_DEV + ch' all
> > the problems would be solved.
>
> > Is this a proper way to ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b4ed20418c7c4?utm_source=digest&utm_medium=email>
> Julia Lawall <julia.lawall@lip6.fr>: Oct 13 01:52PM +0200
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b4edf7c04bc29?utm_source=digest&utm_medium=email>
> Daniel Baluta <daniel.baluta@gmail.com>: Oct 13 02:54PM +0300
>
> > If use a variable instead of 'dev * AD7280A_CELLS_PER_DEV + ch' all
> > the problems would be solved.
>
> > Is this a proper way to handle it?
>
>
> There will be one line of 81 chars. ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b4f022032fd87?utm_source=digest&utm_medium=email>
> Back to top <#1506129b9668439c_digest_top>
> [PATCH] Staging: wilc1000: wilc_wlan: Remove unnecessary cast
> <http://groups.google.com/group/outreachy-kernel/t/18f936bf4067ddce?utm_source=digest&utm_medium=email>
> Shivani Bhardwaj <shivanib134@gmail.com>: Oct 13 05:04PM +0530
>
> Remove cast which is not required.
> Semantic patch used:
> @@
> type T;
> T e;
> identifier x;
> @@
>
> * T x = (T)e;
>
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> --- ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b4deee2f886b2?utm_source=digest&utm_medium=email>
> Back to top <#1506129b9668439c_digest_top>
> [PATCH 0/2] Fix various issues
> <http://groups.google.com/group/outreachy-kernel/t/cbaf50ee25137fd5?utm_source=digest&utm_medium=email>
> Shivani Bhardwaj <shivanib134@gmail.com>: Oct 13 04:33PM +0530
>
> This patch removes unused code and changes the variable type to more
> effective one.
> After applying this patch, code becomes better.
>
> Shivani Bhardwaj (2):
> Staging: wilc1000: ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b4c400fa2e36e?utm_source=digest&utm_medium=email>
> Shivani Bhardwaj <shivanib134@gmail.com>: Oct 13 04:34PM +0530
>
> Remove a flag variable which is not used anywhere in the code.
> Semantic patch used:
>
> @@
> type T;
> identifier i;
> constant C;
> position p != e.p;
> @@
>
> - T i@p;
> <+... when != i
> - i = C; ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b4c44806dd648?utm_source=digest&utm_medium=email>
> Shivani Bhardwaj <shivanib134@gmail.com>: Oct 13 04:34PM +0530
>
> Change variable of the type u8 to bool as the only values acquired by it
> are true or false.
>
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> --- ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b4c491de59a56?utm_source=digest&utm_medium=email>
> Julia Lawall <julia.lawall@lip6.fr>: Oct 13 01:20PM +0200
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b4d21ae5aa5b9?utm_source=digest&utm_medium=email>
> Back to top <#1506129b9668439c_digest_top>
> [PATCH v3 0/3] Fix issues discovered by coccinelle
> <http://groups.google.com/group/outreachy-kernel/t/f1c71247e4dde304?utm_source=digest&utm_medium=email>
> Shivani Bhardwaj <shivanib134@gmail.com>: Oct 13 12:36PM +0530
>
> This patch removes extra NULL tests, extra casts and irrelevant
> typedefs and code.
> After applying this patch, code becomes cleaner.
>
> Shivani Bhardwaj (3):
> Staging: wilc1000: host_interface: ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b3f46bfbede9a?utm_source=digest&utm_medium=email>
> Shivani Bhardwaj <shivanib134@gmail.com>: Oct 13 12:36PM +0530
>
> Remove NULL test on a variable as it is preceded by another NULL
> test on the same variable in the code. Also, it is unnecessary to
> NULL test before kfree().
> Semantic patch used:
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b3f4df522933d?utm_source=digest&utm_medium=email>
> Shivani Bhardwaj <shivanib134@gmail.com>: Oct 13 12:37PM +0530
>
> Remove a typedef and the code that is not required.
> Semantic patch used:
>
> @@
> type T;
> identifier i;
> constant C;
> position p != e.p;
> @@
>
> - T i@p;
> <+... when != i
> - i = C;
> ...+>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b3f581e2e8e24?utm_source=digest&utm_medium=email>
> Shivani Bhardwaj <shivanib134@gmail.com>: Oct 13 12:38PM +0530
>
> Remove irrelevant cast throughout the code.
> Semantic patch used:
>
> @@
> type T;
> T e;
> identifier x;
> @@
>
> * T x = (T)e;
>
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> --- ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b3f60dab55614?utm_source=digest&utm_medium=email>
> Daniel Baluta <daniel.baluta@gmail.com>: Oct 13 10:45AM +0300
>
> On Tue, Oct 13, 2015 at 10:06 AM, Shivani Bhardwaj
> > - }
> > + kfree(E);
>
> > Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>
> Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b4167ef704bcc?utm_source=digest&utm_medium=email>
> Julia Lawall <julia.lawall@lip6.fr>: Oct 13 09:49AM +0200
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b419ff9c204ac?utm_source=digest&utm_medium=email>
> Shivani Bhardwaj <shivanib134@gmail.com>: Oct 13 01:21PM +0530
>
> > - (T)
> > e;
>
> > julia
>
> Thanks, Julia. :)
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b41b742c73874?utm_source=digest&utm_medium=email>
> Shivani Bhardwaj <shivanib134@gmail.com>: Oct 13 04:18PM +0530
>
> >> - (T)
> >> e;
>
> >> julia
>
> Going by the usual way cocci scripts are written, is writing the
> following to make the change wrong?
> @@
> type T;
> T e;
> identifier x;
> @@
>
> - * T x = (T)e; ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b4b60b43d6cc8?utm_source=digest&utm_medium=email>
> Julia Lawall <julia.lawall@lip6.fr>: Oct 13 01:18PM +0200
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b4d0bde94f308?utm_source=digest&utm_medium=email>
> Back to top <#1506129b9668439c_digest_top>
> [PATCH v2] Staging: wilc1000: wilc_wfi_cfgoperations: Remove unnecessary
> constants
> <http://groups.google.com/group/outreachy-kernel/t/9f333cbe7f10286e?utm_source=digest&utm_medium=email>
> Shivani Bhardwaj <shivanib134@gmail.com>: Oct 13 03:55PM +0530
>
> Remove constants wherever not required and change variables to bool type
> to get rid of constants.
> Semantic patch used:
>
> @@
> type T;
> identifier i;
> constant C;
> position p != e.p;
> @@
>
> - T i@p; ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b4a2af3a8321b?utm_source=digest&utm_medium=email>
> Julia Lawall <julia.lawall@lip6.fr>: Oct 13 12:41PM +0200
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b4b0a392a7203?utm_source=digest&utm_medium=email>
> Shivani Bhardwaj <shivanib134@gmail.com>: Oct 13 04:14PM +0530
>
>
> > Actually, my thought was to have a bool variable called pmkid_found. That
> > would be more understandable than flag.
>
> > Also the initial value should be false, not 0.
>
> Fine. ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b4b30c2ae7cbf?utm_source=digest&utm_medium=email>
> Back to top <#1506129b9668439c_digest_top>
> [PATCH] Staging: wilc1000: wilc_wfi_cfgoperations: Remove unused code
> <http://groups.google.com/group/outreachy-kernel/t/d1a40dc6a2ca95e9?utm_source=digest&utm_medium=email>
> Shivani Bhardwaj <shivanib134@gmail.com>: Oct 13 03:18PM +0530
>
> Remove the declaration, initialization and statement having a
> variable that is not used anywhere in the code.
> Semantic patch used:
>
> @@
> type T;
> identifier i;
> constant C;
> position p != e.p;
> @@ ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b48281d722cb6?utm_source=digest&utm_medium=email>
> Julia Lawall <julia.lawall@lip6.fr>: Oct 13 11:54AM +0200
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b486efbd43b71?utm_source=digest&utm_medium=email>
> Back to top <#1506129b9668439c_digest_top>
> [PATCH 0/3] Remove useless cast on void pointer
> <http://groups.google.com/group/outreachy-kernel/t/491431a1e1b965a2?utm_source=digest&utm_medium=email>
> Amitoj Kaur Chawla <amitoj1606@gmail.com>: Oct 13 01:35PM +0530
>
> This patchset removes multiple useless cast on void pointer.
>
> Amitoj Kaur Chawla (3):
> staging: rtl8712: Remove useless cast on void pointer
> staging: rtl8712: Remove useless cast on void ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b427ddb274975?utm_source=digest&utm_medium=email>
> Amitoj Kaur Chawla <amitoj1606@gmail.com>: Oct 13 01:36PM +0530
>
> The semantic patch used to find this is:
>
> @r@
> expression x;
> void* e;
> type T;
> identifier f;
> @@
>
> (
> *((T *)e)
> |
> ((T *)x)[...]
> |
> ((T *)x)->f
> |
> - (T *)
> e
> )
>
> Signed-off-by: ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b42954408b53d?utm_source=digest&utm_medium=email>
> Amitoj Kaur Chawla <amitoj1606@gmail.com>: Oct 13 01:37PM +0530
>
> The semantic patch used to find this is:
>
> @r@
> expression x;
> void* e;
> type T;
> identifier f;
> @@
>
> (
> *((T *)e)
> |
> ((T *)x)[...]
> |
> ((T *)x)->f
> |
> - (T *)
> e
> )
>
> Signed-off-by: ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b42a30993eb79?utm_source=digest&utm_medium=email>
> Amitoj Kaur Chawla <amitoj1606@gmail.com>: Oct 13 01:38PM +0530
>
> The semantic patch used to find this is:
>
> @r@
> expression x;
> void* e;
> type T;
> identifier f;
> @@
>
> (
> *((T *)e)
> |
> ((T *)x)[...]
> |
> ((T *)x)->f
> |
> - (T *)
> e
> )
>
> Signed-off-by: ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b42af6a26dcb0?utm_source=digest&utm_medium=email>
> Julia Lawall <julia.lawall@lip6.fr>: Oct 13 10:11AM +0200
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b42ce37e011c8?utm_source=digest&utm_medium=email>
> Amitoj Kaur Chawla <amitoj1606@gmail.com>: Oct 13 01:44PM +0530
>
> > of the cast, it would be reasonable to also drop them.
>
> > Likewise elsewhere.
>
> > julia
>
> Will do. Sending v2.
>
>
> --
> Amitoj
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b4303241a7a8b?utm_source=digest&utm_medium=email>
> Amitoj Kaur Chawla <amitoj1606@gmail.com>: Oct 13 02:03PM +0530
>
> This patchset removes multiple useless cast on void pointer.
>
> The semantic patch used to find this is:
>
> @r@
> expression x;
> void* e;
> type T;
> identifier f;
> @@
>
> (
> *((T *)e)
> | ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b440bb84843ba?utm_source=digest&utm_medium=email>
> Amitoj Kaur Chawla <amitoj1606@gmail.com>: Oct 13 02:05PM +0530
>
> The semantic patch used to find this is:
>
> @r@
> expression x;
> void* e;
> type T;
> identifier f;
> @@
>
> (
> *((T *)e)
> |
> ((T *)x)[...]
> |
> ((T *)x)->f
> |
> - (T *)
> e
> )
>
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b442382eca1c2?utm_source=digest&utm_medium=email>
> Amitoj Kaur Chawla <amitoj1606@gmail.com>: Oct 13 02:06PM +0530
>
> The semantic patch used to find this is:
>
> @r@
> expression x;
> void* e;
> type T;
> identifier f;
> @@
>
> (
> *((T *)e)
> |
> ((T *)x)[...]
> |
> ((T *)x)->f
> |
> - (T *)
> e
> )
>
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b44348d331739?utm_source=digest&utm_medium=email>
> Amitoj Kaur Chawla <amitoj1606@gmail.com>: Oct 13 02:08PM +0530
>
> The semantic patch used to find this is:
>
> @r@
> expression x;
> void* e;
> type T;
> identifier f;
> @@
>
> (
> *((T *)e)
> |
> ((T *)x)[...]
> |
> ((T *)x)->f
> |
> - (T *)
> e
> )
>
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b44486a0d8575?utm_source=digest&utm_medium=email>
> Julia Lawall <julia.lawall@lip6.fr>: Oct 13 10:38AM +0200
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b44553dcae32d?utm_source=digest&utm_medium=email>
> Amitoj Kaur Chawla <amitoj1606@gmail.com>: Oct 13 02:19PM +0530
>
> >> )
>
> > When you make a change by hand beyond what the semantic patch does, it
> > should be mentioned up here, not just below the ---.
>
> Oh, okay. Will keep that in mind for the future.
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b44e2828cb6d9?utm_source=digest&utm_medium=email>
> Back to top <#1506129b9668439c_digest_top>
> [PATCH 1/2] Staging: wilc1000: host_interface: Use kmemdup instead of
> kmalloc and memcpy
> <http://groups.google.com/group/outreachy-kernel/t/76de83f71cfb3011?utm_source=digest&utm_medium=email>
> Greg KH <gregkh@linuxfoundation.org>: Oct 12 09:01PM -0700
>
> On Sun, Oct 11, 2015 at 10:01:36PM +0530, Shraddha Barke wrote:
> > ---
> > drivers/staging/wilc1000/host_interface.c | 14 ++++++--------
> > 1 file changed, 6 insertions(+), 8 deletions(-)
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b3af57bfe1813?utm_source=digest&utm_medium=email>
> Back to top <#1506129b9668439c_digest_top>
> [PATCH] staging: sm750fb: Remove multiple blank lines
> <http://groups.google.com/group/outreachy-kernel/t/2e7a3e039f1942?utm_source=digest&utm_medium=email>
> Greg KH <gregkh@linuxfoundation.org>: Oct 12 08:33PM -0700
>
> On Fri, Oct 09, 2015 at 11:57:38AM +0530, Amitoj Kaur Chawla wrote:
> > ---
> > drivers/staging/sm750fb/ddk750_chip.c | 3 ---
> > 1 file changed, 3 deletions(-)
>
> This doesn't apply to my ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b3a94920879ae?utm_source=digest&utm_medium=email>
> Back to top <#1506129b9668439c_digest_top>
> sending patch revisions w mutt ???
> <http://groups.google.com/group/outreachy-kernel/t/8098151244e36971?utm_source=digest&utm_medium=email>
> Alison Schofield <amsfield22@gmail.com>: Oct 12 02:35PM -0700
>
> On Mon, Oct 12, 2015 at 03:36:23PM +0530, Sudip Mukherjee wrote:
> > send-email.
>
> > regards
> > sudip
>
> Thanks Sudip! I used git send-email today. (I still hold out hope of
> finding mutt instructs ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b201901c39029?utm_source=digest&utm_medium=email>
> Greg KH <gregkh@linuxfoundation.org>: Oct 12 04:40PM -0700
>
> On Sat, Oct 10, 2015 at 06:52:27PM -0700, Alison Schofield wrote:
>
> > Is there a better way?
>
> > Also, do you want it threaded right on top, ie. in reply to the previous
> > patch message.
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b27b01ff30fa0?utm_source=digest&utm_medium=email>
> Back to top <#1506129b9668439c_digest_top>
> [PATCH] staging: lustre: llite: Remove useless cast on void pointer
> <http://groups.google.com/group/outreachy-kernel/t/16849a895fab7dc6?utm_source=digest&utm_medium=email>
> Amitoj Kaur Chawla <amitoj1606@gmail.com>: Oct 13 03:13AM +0530
>
> The semantic patch used to find this is:
>
> @r@
> expression x;
> void* e;
> type T;
> identifier f;
> @@
>
> (
> *((T *)e)
> |
> ((T *)x)[...]
> |
> ((T *)x)->f
> |
> - (T *)
> e
> )
>
> Signed-off-by: ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b208a1c8cef58?utm_source=digest&utm_medium=email>
> Back to top <#1506129b9668439c_digest_top>
> [PATCH v2] staging: rdma: hfi1: remove unnecessary out of memory messages
> <http://groups.google.com/group/outreachy-kernel/t/3a3541d58e33a1bb?utm_source=digest&utm_medium=email>
> Alison Schofield <amsfield22@gmail.com>: Oct 12 02:28PM -0700
>
> Out of memory messages are unnecssary in the drivers as they are
> reported by memory management.
>
> Addresses checkpatch.pl: WARNING: Possible unnecessary 'out of memory'
> message
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b1fc10b44b2a2?utm_source=digest&utm_medium=email>
> Back to top <#1506129b9668439c_digest_top>
> [PATCH v2] staging: gdmwm: move variables to right side of comparison test
> <http://groups.google.com/group/outreachy-kernel/t/de940d28ccf2cf40?utm_source=digest&utm_medium=email>
> Alison Schofield <amsfield22@gmail.com>: Oct 12 01:53PM -0700
>
> Move variables to right side of comparison test to improve readability.
>
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> ---
>
> Changes in v2: clarified commit message and description
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b1dd5494f928b?utm_source=digest&utm_medium=email>
> Back to top <#1506129b9668439c_digest_top>
> [PATCH v2] staging: wilc1000: move open brace in line with control flow
> statement
> <http://groups.google.com/group/outreachy-kernel/t/f17101de2b6e3af6?utm_source=digest&utm_medium=email>
> Alison Schofield <amsfield22@gmail.com>: Oct 12 01:22PM -0700
>
> Move open braces to be in line with "if" control flow statements.
> Addresses checkpatch.pl:
> ERROR: that open brace { should be on the previous line
>
> Signed-off-by: Alison Schofield ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b1c29990fb6fd?utm_source=digest&utm_medium=email>
> Back to top <#1506129b9668439c_digest_top>
> [PATCH 0/3] Fix issues detected by coccinelle
> <http://groups.google.com/group/outreachy-kernel/t/95216c0a3b0a3e09?utm_source=digest&utm_medium=email>
> Shivani Bhardwaj <shivanib134@gmail.com>: Oct 12 07:04PM +0530
>
> Replace appropriate functions with kzalloc(), fix NULL tests
> and remove unnecessary code.
> After applying this patch, code becomes better.
>
> Shivani Bhardwaj (3):
> Staging: wilc1000: ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b05e453471548?utm_source=digest&utm_medium=email>
> Shivani Bhardwaj <shivanib134@gmail.com>: Oct 12 07:05PM +0530
>
> Replace the function kmalloc and following memset function with a
> single function kzalloc.
> Issue found using coccinelle.
>
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> --- ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b05edc6d71da7?utm_source=digest&utm_medium=email>
> Shivani Bhardwaj <shivanib134@gmail.com>: Oct 12 07:05PM +0530
>
> Remove NULL test statement as it is preceded by another NULL test on the
> same variable in the code.
> Issue found using coccinelle.
>
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> --- ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b05f631cfdac8?utm_source=digest&utm_medium=email>
> Shivani Bhardwaj <shivanib134@gmail.com>: Oct 12 07:06PM +0530
>
> Remove declaration and initialization of variables that are not used
> anywhere in the code.
> Issue found using coccinelle.
>
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> --- ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b05fec77deee4?utm_source=digest&utm_medium=email>
> Shraddha Barke <shraddha.6596@gmail.com>: Oct 12 07:15PM +0530
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b068366635084?utm_source=digest&utm_medium=email>
> Julia Lawall <julia.lawall@lip6.fr>: Oct 12 03:54PM +0200
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b06f6cfdc1e6f?utm_source=digest&utm_medium=email>
> Shivani Bhardwaj <shivanib134@gmail.com>: Oct 12 07:51PM +0530
>
>
> > * T x = (T)e;
>
> > will highlight initializations with useless casts.
>
> > julia
>
> Thanks so much, Julia. I'm applying all of this. Thank you for the
> coccinelle script. Also, I want to know that ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b0875470e09a7?utm_source=digest&utm_medium=email>
> Julia Lawall <julia.lawall@lip6.fr>: Oct 12 04:27PM +0200
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b08cb4d72210a?utm_source=digest&utm_medium=email>
> Shivani Bhardwaj <shivanib134@gmail.com>: Oct 12 08:54PM +0530
>
> > declaration updated to remove the type too, and as much of the rest as
> you
> > want to do in the short term.
>
> > julia
>
> OK. Thanks. I'm sending v2.
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b0bdef0337b5d?utm_source=digest&utm_medium=email>
> Shraddha Barke <shraddha.6596@gmail.com>: Oct 12 09:12PM +0530
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b0cdd25a14cf4?utm_source=digest&utm_medium=email>
> Shivani Bhardwaj <shivanib134@gmail.com>: Oct 12 09:18PM +0530
>
> > file. There are other instances of unnecessary null test which can be
> > found using Coccinelle.I didn't work on this one since you already are :)
>
> > Shraddha
>
> Thanks! Are you writing your own ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b0d369b6f07b1?utm_source=digest&utm_medium=email>
> Shivani Bhardwaj <shivanib134@gmail.com>: Oct 12 11:00PM +0530
>
> This patch removes useless casts and code.
> After applying this patch, code becomes better and compact.
>
> Shivani Bhardwaj (3):
> Staging: wilc1000: host_interface: Remove extra NULL test ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b12c44b1be472?utm_source=digest&utm_medium=email>
> Shivani Bhardwaj <shivanib134@gmail.com>: Oct 12 11:02PM +0530
>
> Remove NULL test statement as it is preceded by another NULL test on the
> same variable in the code.
> Issue found using coccinelle.
>
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> --- ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b12d96d25bf03?utm_source=digest&utm_medium=email>
> Shivani Bhardwaj <shivanib134@gmail.com>: Oct 12 11:02PM +0530
>
> Remove useless casts that occur throughout the code.
> Issue detected using coccinelle.
>
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ---
> Changes in v2:
> Deleted one patch and ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b12e6b63e26b0?utm_source=digest&utm_medium=email>
> Shivani Bhardwaj <shivanib134@gmail.com>: Oct 12 11:03PM +0530
>
> Remove declaration and initialization of variables that are not used
> anywhere in the code.
> Issue found using coccinelle.
>
> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> --- ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b12f0961d3735?utm_source=digest&utm_medium=email>
> Daniel Baluta <daniel.baluta@gmail.com>: Oct 12 09:00PM +0300
>
>
> > - if (pstrWFIDrv != NULL) {
> > kfree(pstrWFIDrv);
> > /* pstrWFIDrv=NULL; */
>
> You should also remove this comment.
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b146928861bd3?utm_source=digest&utm_medium=email>
> Arnd Bergmann <arnd@arndb.de>: Oct 12 08:47PM +0200
>
> On Monday 12 October 2015 23:03:33 Shivani Bhardwaj wrote:
> > anywhere in the code.
> > Issue found using coccinelle.
>
> > Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>
> Nice find!
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b16f27d653fba?utm_source=digest&utm_medium=email>
> Arnd Bergmann <arnd@arndb.de>: Oct 12 08:49PM +0200
>
> On Monday 12 October 2015 23:02:53 Shivani Bhardwaj wrote:
> > - tstrWILC_WFIDrv *pstrWFIDrv = (tstrWILC_WFIDrv *)drvHandler;
>
> > /*prepare configuration packet*/
> > ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b170a302baca0?utm_source=digest&utm_medium=email>
> Arnd Bergmann <arnd@arndb.de>: Oct 12 08:50PM +0200
>
> On Monday 12 October 2015 23:02:01 Shivani Bhardwaj wrote:
> > Deleted one patch and added another. Improved the other ones.
> > drivers/staging/wilc1000/host_interface.c | 3 --- ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b1724bb7797b6?utm_source=digest&utm_medium=email>
> Shivani Bhardwaj <shivanib134@gmail.com>: Oct 13 12:21AM +0530
>
> > can be removed. I haven't checked the other variables, but I'd guess
> > that the same is true for them, because gcc tends to warn otherwise.
>
> > Arnd
>
> Yes, Arnd. I've just removed the ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b17301ad44ba3?utm_source=digest&utm_medium=email>
> Shivani Bhardwaj <shivanib134@gmail.com>: Oct 13 12:22AM +0530
>
> > to the left. Also, the comment behind it can be removed in the same
> > patch.
>
> > Arnd
> Yes, I'm fixing that and removing the comment. Sending v3.
> thank you.
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b173ba2d48e5b?utm_source=digest&utm_medium=email>
> Julia Lawall <julia.lawall@lip6.fr>: Oct 12 09:26PM +0200
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b1915e68b8ed2?utm_source=digest&utm_medium=email>
> Julia Lawall <julia.lawall@lip6.fr>: Oct 12 09:28PM +0200
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b192db77be613?utm_source=digest&utm_medium=email>
> Julia Lawall <julia.lawall@lip6.fr>: Oct 12 09:34PM +0200
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b198adb79d72b?utm_source=digest&utm_medium=email>
> Shivani Bhardwaj <shivanib134@gmail.com>: Oct 13 01:17AM +0530
>
>
> > This is too much. I think the varialbe is still used? You should just
> > remove the (tstrWILC_WFIDrv *).
>
> > julia
>
> I just realized what Arnd had to say. I'm so sorry. I'm correcting ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b1a4132fcd761?utm_source=digest&utm_medium=email>
> Back to top <#1506129b9668439c_digest_top>
> [PATCH] Staging: vt6655: mac: Remove extra braces
> <http://groups.google.com/group/outreachy-kernel/t/7f74f75f5ab81fff?utm_source=digest&utm_medium=email>
> Shivani Bhardwaj <shivanib134@gmail.com>: Oct 12 11:14PM +0530
>
> Remove braces from an if block as it comprises of a single statement.
> Fix checkpatch warning: braces {} are not necessary for single statement
> blocks
>
> Signed-off-by: Shivani Bhardwaj ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b138374063056?utm_source=digest&utm_medium=email>
> Daniel Baluta <daniel.baluta@gmail.com>: Oct 12 08:48PM +0300
>
> > Fix checkpatch warning: braces {} are not necessary for single statement
> > blocks
>
> > Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>
> Reviewed-by: Daniel Baluta ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b13b7923371e0?utm_source=digest&utm_medium=email>
> Back to top <#1506129b9668439c_digest_top>
> [PATCH v4 1/3] Staging: rtl8192u: ieee80211: ieee80211_softmac: Remove
> commented printk messages
> <http://groups.google.com/group/outreachy-kernel/t/9823ee8f81f3a223?utm_source=digest&utm_medium=email>
> Daniel Baluta <daniel.baluta@gmail.com>: Oct 12 08:24PM +0300
>
> > Remove commented printk since it is not needed
>
> > Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
>
> Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b126eb9eeac4c?utm_source=digest&utm_medium=email>
> Daniel Baluta <daniel.baluta@gmail.com>: Oct 12 08:27PM +0300
>
> > Remove commented out printk messages since they are not needed
>
> > Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
>
> Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b1292a3a6400c?utm_source=digest&utm_medium=email>
> Daniel Baluta <daniel.baluta@gmail.com>: Oct 12 08:31PM +0300
>
> > Remove commented out printk messages since they are not needed. Also
> remove
> > the unnecessary braces and blank lines
>
> > Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b12d35a145c5f?utm_source=digest&utm_medium=email>
> Back to top <#1506129b9668439c_digest_top>
> [PATCH v2 1/2] Staging: vt6655: mac: Remove character limit warning
> <http://groups.google.com/group/outreachy-kernel/t/4ae7c031e482edd0?utm_source=digest&utm_medium=email>
> Daniel Baluta <daniel.baluta@gmail.com>: Oct 12 08:06PM +0300
>
> > Break the lines with over 80 characters into sensible chunks of data.
> > Fixes the chackpacth warning: line over 80 characters
>
> > Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b11724457c77e?utm_source=digest&utm_medium=email>
> Shivani Bhardwaj <shivanib134@gmail.com>: Oct 12 11:01PM +0530
>
> > + unsigned long dwCurrDescAddr)
>
> > thanks,
> > Daniel.
> I'll take care next time. Thanks, Daniel.
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b12ca44f6e0e1?utm_source=digest&utm_medium=email>
> Back to top <#1506129b9668439c_digest_top>
> [PATCH 0/3] Remove NULL check before kfree
> <http://groups.google.com/group/outreachy-kernel/t/ccdee4c432092ab3?utm_source=digest&utm_medium=email>
> Shraddha Barke <shraddha.6596@gmail.com>: Oct 12 08:49PM +0530
>
> These patches remove null check before kfree using the Coccinelle script-
>
> // <smpl>
> @@ expression E; @@
> - if (E != NULL) { kfree(E); }
> + kfree(E);
> @@ expression E; @@
> - if (E != NULL) { ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b0b9c4cf050d4?utm_source=digest&utm_medium=email>
> Shraddha Barke <shraddha.6596@gmail.com>: Oct 12 08:49PM +0530
>
> kfree on NULL pointer is a no-op.
> The semantic patch used to find such an instance where NULL check is
> present before kfree-
>
> // <smpl>
> @@ expression E; @@
> - if (E != NULL) { kfree(E); } ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b0b9cbdfff01f?utm_source=digest&utm_medium=email>
> Shraddha Barke <shraddha.6596@gmail.com>: Oct 12 08:49PM +0530
>
> kfree on NULL pointer is a no-op.
>
> The semantic patch used-
>
> // <smpl>
> @@ expression E; @@
> - if (E != NULL) { kfree(E); }
> + kfree(E);
> @@ expression E; @@
> - if (E != NULL) { kfree(E); E = ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b0b9d56b61e86?utm_source=digest&utm_medium=email>
> Shraddha Barke <shraddha.6596@gmail.com>: Oct 12 08:49PM +0530
>
> kfree on NULL pointer is a no-op.
>
> The semantic patch used -
>
> // <smpl>
> @@ expression E; @@
> - if (E != NULL) { kfree(E); }
> + kfree(E);
> @@ expression E; @@
> - if (E != NULL) { kfree(E); E = ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b0b9dd88623de?utm_source=digest&utm_medium=email>
> Julia Lawall <julia.lawall@lip6.fr>: Oct 12 05:26PM +0200
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b0c036c53e616?utm_source=digest&utm_medium=email>
> Julia Lawall <julia.lawall@lip6.fr>: Oct 12 05:28PM +0200
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b0c1d91278655?utm_source=digest&utm_medium=email>
> Daniel Baluta <daniel.baluta@gmail.com>: Oct 12 08:20PM +0300
>
> > + E = NULL;
> > // </smpl>smpl>
>
> > Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
>
> Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>
>
> ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b1237a082475d?utm_source=digest&utm_medium=email>
> Back to top <#1506129b9668439c_digest_top>
> [PATCH] Staging: most: hdm-i2c: Drop owner assignment from i2c driver
> <http://groups.google.com/group/outreachy-kernel/t/fe8e5e07b188c9a6?utm_source=digest&utm_medium=email>
> Shraddha Barke <shraddha.6596@gmail.com>: Oct 12 06:44PM +0530
>
> i2c_driver does not need to set an owner because core will set it
>
> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
> ---
> drivers/staging/most/hdm-i2c/hdm_i2c.c | 1 -
> 1 file changed, 1 ...more
> <http://groups.google.com/group/outreachy-kernel/msg/b04cbd40fe33e?utm_source=digest&utm_medium=email>
> Back to top <#1506129b9668439c_digest_top>
> You received this digest because you're subscribed to updates for this
> group. You can change your settings on the group membership page
> <https://groups.google.com/forum/?utm_source=digest&utm_medium=email#!forum/outreachy-kernel/join>
> .
> To unsubscribe from this group and stop receiving emails from it send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
>

--001a114f00facf845c0522260198
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I am working on linux kernel . I try to understand on thes=
e bug can anyone help me <br><a href=3D"http://bugzilla.netfilter.org/show_=
bug.cgi?id=3D895#c0">http://bugzilla.netfilter.org/show_bug.cgi?id=3D895#c0=
</a><br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On =
Tue, Oct 13, 2015 at 5:55 PM,  <span dir=3D"ltr">&lt;<a href=3D"mailto:outr=
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
  <a name=3D"1506129b9668439c_digest_top" style=3D"font-size:21px">
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
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b9668=
439c_group_thread_0">
      [PATCH] Staging: wilc1000: Use kzalloc instead of kmalloc and memset<=
/a> -
      <span style=3D"color:#777777">2 Updates</span>
    </li>
 =20
    <li>
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b9668=
439c_group_thread_1">
      [PATCH v3 2/9] staging: iio: adc: properly indent to match open paran=
thesis</a> -
      <span style=3D"color:#777777">19 Updates</span>
    </li>
 =20
    <li>
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b9668=
439c_group_thread_2">
      [PATCH] Staging: wilc1000: wilc_wlan: Remove unnecessary cast</a> -
      <span style=3D"color:#777777">1 Update</span>
    </li>
 =20
    <li>
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b9668=
439c_group_thread_3">
      [PATCH 0/2] Fix various issues</a> -
      <span style=3D"color:#777777">4 Updates</span>
    </li>
 =20
    <li>
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b9668=
439c_group_thread_4">
      [PATCH v3 0/3] Fix issues discovered by coccinelle</a> -
      <span style=3D"color:#777777">9 Updates</span>
    </li>
 =20
    <li>
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b9668=
439c_group_thread_5">
      [PATCH v2] Staging: wilc1000: wilc_wfi_cfgoperations: Remove unnecess=
ary constants</a> -
      <span style=3D"color:#777777">3 Updates</span>
    </li>
 =20
    <li>
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b9668=
439c_group_thread_6">
      [PATCH] Staging: wilc1000: wilc_wfi_cfgoperations: Remove unused code=
</a> -
      <span style=3D"color:#777777">2 Updates</span>
    </li>
 =20
    <li>
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b9668=
439c_group_thread_7">
      [PATCH 0/3] Remove useless cast on void pointer</a> -
      <span style=3D"color:#777777">12 Updates</span>
    </li>
 =20
    <li>
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b9668=
439c_group_thread_8">
      [PATCH 1/2] Staging: wilc1000: host_interface: Use kmemdup instead of=
 kmalloc and memcpy</a> -
      <span style=3D"color:#777777">1 Update</span>
    </li>
 =20
    <li>
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b9668=
439c_group_thread_9">
      [PATCH] staging: sm750fb: Remove multiple blank lines</a> -
      <span style=3D"color:#777777">1 Update</span>
    </li>
 =20
    <li>
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b9668=
439c_group_thread_10">
      sending patch revisions w mutt ???</a> -
      <span style=3D"color:#777777">2 Updates</span>
    </li>
 =20
    <li>
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b9668=
439c_group_thread_11">
      [PATCH] staging: lustre: llite: Remove useless cast on void pointer</=
a> -
      <span style=3D"color:#777777">1 Update</span>
    </li>
 =20
    <li>
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b9668=
439c_group_thread_12">
      [PATCH v2] staging: rdma: hfi1: remove unnecessary out of memory mess=
ages</a> -
      <span style=3D"color:#777777">1 Update</span>
    </li>
 =20
    <li>
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b9668=
439c_group_thread_13">
      [PATCH v2] staging: gdmwm: move variables to right side of comparison=
 test</a> -
      <span style=3D"color:#777777">1 Update</span>
    </li>
 =20
    <li>
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b9668=
439c_group_thread_14">
      [PATCH v2] staging: wilc1000: move open brace in line with control fl=
ow statement</a> -
      <span style=3D"color:#777777">1 Update</span>
    </li>
 =20
    <li>
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b9668=
439c_group_thread_15">
      [PATCH 0/3] Fix issues detected by coccinelle</a> -
      <span style=3D"color:#777777">25 Updates</span>
    </li>
 =20
    <li>
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b9668=
439c_group_thread_16">
      [PATCH] Staging: vt6655: mac: Remove extra braces</a> -
      <span style=3D"color:#777777">2 Updates</span>
    </li>
 =20
    <li>
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b9668=
439c_group_thread_17">
      [PATCH v4 1/3] Staging: rtl8192u: ieee80211: ieee80211_softmac: Remov=
e commented printk messages</a> -
      <span style=3D"color:#777777">3 Updates</span>
    </li>
 =20
    <li>
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b9668=
439c_group_thread_18">
      [PATCH v2 1/2] Staging: vt6655: mac: Remove character limit warning</=
a> -
      <span style=3D"color:#777777">2 Updates</span>
    </li>
 =20
    <li>
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b9668=
439c_group_thread_19">
      [PATCH 0/3] Remove NULL check before kfree</a> -
      <span style=3D"color:#777777">7 Updates</span>
    </li>
 =20
    <li>
      <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b9668=
439c_group_thread_20">
      [PATCH] Staging: most: hdm-i2c: Drop owner assignment from i2c driver=
</a> -
      <span style=3D"color:#777777">1 Update</span>
    </li>
 =20
  </ul>
</div>



 =20
  <a name=3D"1506129b9668439c_group_thread_0"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/9106dd04ff=
835e59?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;=
color:#1155cc;text-decoration:none" target=3D"_blank">
      [PATCH] Staging: wilc1000: Use kzalloc instead of kmalloc and memset
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Greg KH &lt;<a href=3D"mailto:gregkh@linuxfoundation.org" target=3D=
"_blank">gregkh@linuxfoundation.org</a>&gt;: Oct 12 09:00PM -0700
      </span>
      <br><br>
      On Fri, Oct 09, 2015 at 07:01:32PM +0530, Shraddha Barke wrote:<br>
&gt; ---<br>
&gt;  drivers/staging/wilc1000/host_interface.c | 11 +++--------<br>
&gt;  1 file changed, 3 insertions(+), 8 deletions(-)<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b3a=
f5636d1d59?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shraddha Barke &lt;<a href=3D"mailto:shraddha.6596@gmail.com" targe=
t=3D"_blank">shraddha.6596@gmail.com</a>&gt;: Oct 13 05:46PM +0530
      </span>
      <br><br>
      Replace kmalloc and memset with a single call to kzalloc.<br>
=C2=A0<br>
Signed-off-by: Shraddha Barke &lt;<a href=3D"mailto:shraddha.6596@gmail.com=
" target=3D"_blank">shraddha.6596@gmail.com</a>&gt;<br>
---<br>
Changes in v2-<br>
 Based on the current staging-testing branch<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b50=
390e099227?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b966843=
9c_digest_top">Back to top</a>
  </div>


 =20
  <a name=3D"1506129b9668439c_group_thread_1"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/fc88e7a3b2=
c59b5c?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;=
color:#1155cc;text-decoration:none" target=3D"_blank">
      [PATCH v3 2/9] staging: iio: adc: properly indent to match open paran=
thesis
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Daniel Baluta &lt;<a href=3D"mailto:daniel.baluta@gmail.com" target=
=3D"_blank">daniel.baluta@gmail.com</a>&gt;: Oct 12 06:14PM +0300
      </span>
      <br><br>
      &gt;     - nothing<br>
&gt; Changes in v3:<br>
&gt;     - rework changes in order to avoid introducing new checkpatch warn=
ings<br>
=C2=A0<br>
&lt;snip&gt;<br>
=C2=A0<br>
&gt;                                 ad7280_store_balance_sw;
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b0b=
51c5659369?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Daniel Baluta &lt;<a href=3D"mailto:daniel.baluta@gmail.com" target=
=3D"_blank">daniel.baluta@gmail.com</a>&gt;: Oct 12 07:26PM +0300
      </span>
      <br><br>
      &gt; Use !condition instead off condition =3D=3D NULL when comparing =
with NULL<br>
=C2=A0<br>
&gt; Signed-off-by: Ioana Ciornei &lt;<a href=3D"mailto:ciorneiioana@gmail.=
com" target=3D"_blank">ciorneiioana@gmail.com</a>&gt;<br>
=C2=A0<br>
Reviewed-by: Daniel Baluta &lt;<a href=3D"mailto:daniel.baluta@intel.com" t=
arget=3D"_blank">daniel.baluta@intel.com</a>&gt;<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b0f=
422c2e07d5?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Daniel Baluta &lt;<a href=3D"mailto:daniel.baluta@gmail.com" target=
=3D"_blank">daniel.baluta@gmail.com</a>&gt;: Oct 12 07:31PM +0300
      </span>
      <br><br>
      &gt; Remove the space after an explicit cast because there is no<br>
&gt; point in having it<br>
=C2=A0<br>
&gt; Signed-off-by: Ioana Ciornei &lt;<a href=3D"mailto:ciorneiioana@gmail.=
com" target=3D"_blank">ciorneiioana@gmail.com</a>&gt;<br>
=C2=A0<br>
Reviewed-by: Daniel Baluta &lt;<a href=3D"mailto:daniel.baluta@intel.com" t=
arget=3D"_blank">daniel.baluta@intel.com</a>&gt;
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b0f=
8806d3b1bc?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Daniel Baluta &lt;<a href=3D"mailto:daniel.baluta@gmail.com" target=
=3D"_blank">daniel.baluta@gmail.com</a>&gt;: Oct 12 07:38PM +0300
      </span>
      <br><br>
      <br>
&gt;  static IIO_DEVICE_ATTR_NAMED(in_v_m_v_scale_available,<br>
&gt; -                            in_voltage-voltage_scale_available,<br>
&gt; +                            in_voltage - voltage_scale_available,<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b0f=
e49bf522b0?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Daniel Baluta &lt;<a href=3D"mailto:daniel.baluta@gmail.com" target=
=3D"_blank">daniel.baluta@gmail.com</a>&gt;: Oct 12 07:39PM +0300
      </span>
      <br><br>
      &gt; Insert a blank line after declarations<br>
=C2=A0<br>
&gt; Signed-off-by: Ioana Ciornei &lt;<a href=3D"mailto:ciorneiioana@gmail.=
com" target=3D"_blank">ciorneiioana@gmail.com</a>&gt;<br>
=C2=A0<br>
Reviewed-by: Daniel Baluta &lt;<a href=3D"mailto:daniel.baluta@intel.com" t=
arget=3D"_blank">daniel.baluta@intel.com</a>&gt;<br>
=C2=A0<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b0f=
f548eb9564?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Daniel Baluta &lt;<a href=3D"mailto:daniel.baluta@gmail.com" target=
=3D"_blank">daniel.baluta@gmail.com</a>&gt;: Oct 12 07:40PM +0300
      </span>
      <br><br>
      &gt; Remove multiple blank lines since there is no practical reason<b=
r>
&gt; to have it<br>
=C2=A0<br>
&gt; Signed-off-by: Ioana Ciornei &lt;<a href=3D"mailto:ciorneiioana@gmail.=
com" target=3D"_blank">ciorneiioana@gmail.com</a>&gt;<br>
=C2=A0<br>
Reviewed-by: Daniel Baluta &lt;<a href=3D"mailto:daniel.baluta@intel.com" t=
arget=3D"_blank">daniel.baluta@intel.com</a>&gt;<br>
=C2=A0<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b10=
0222a4ab2f?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Daniel Baluta &lt;<a href=3D"mailto:daniel.baluta@gmail.com" target=
=3D"_blank">daniel.baluta@gmail.com</a>&gt;: Oct 12 07:50PM +0300
      </span>
      <br><br>
      &gt; Remove the use of CamelCase to follow the kernel naming conventi=
ons<br>
=C2=A0<br>
&gt; Signed-off-by: Ioana Ciornei &lt;<a href=3D"mailto:ciorneiioana@gmail.=
com" target=3D"_blank">ciorneiioana@gmail.com</a>&gt;<br>
=C2=A0<br>
Some of this names I think are intended because are easier to read.
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b10=
956a3ab6ea?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Daniel Baluta &lt;<a href=3D"mailto:daniel.baluta@gmail.com" target=
=3D"_blank">daniel.baluta@gmail.com</a>&gt;: Oct 12 07:53PM +0300
      </span>
      <br><br>
      &gt; +                                          */<br>
=C2=A0<br>
&gt;  /* Configuration Register Bit Designations (AD7192_REG_CONF) */<br>
=C2=A0<br>
&gt; --<br>
=C2=A0<br>
This patch is correct. Anyhow, I think it is better to add the
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b10=
c0a2432806?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Daniel Baluta &lt;<a href=3D"mailto:daniel.baluta@gmail.com" target=
=3D"_blank">daniel.baluta@gmail.com</a>&gt;: Oct 12 07:59PM +0300
      </span>
      <br><br>
      &gt; Convert uint32_t to u32 and uint64_t to u64 in order to<br>
&gt; follow the kernel best practice<br>
=C2=A0<br>
&gt; Signed-off-by: Ioana Ciornei &lt;<a href=3D"mailto:ciorneiioana@gmail.=
com" target=3D"_blank">ciorneiioana@gmail.com</a>&gt;<br>
=C2=A0<br>
Reviewed-by: Daniel Baluta
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b11=
161c9eadcc?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Ioana Ciornei &lt;<a href=3D"mailto:ciorneiioana@gmail.com" target=
=3D"_blank">ciorneiioana@gmail.com</a>&gt;: Oct 12 10:00PM +0300
      </span>
      <br><br>
      &gt; no binary operator<br>
&gt; here.<br>
=C2=A0<br>
&gt; If checkpatch complains about this then it&#39;s a false positive.<br>
=C2=A0<br>
=C2=A0<br>
Yes, checkpatch generated a warning and also there were no build errors.<br=
>
Sorry about this.
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b17=
aab2756684?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Greg KH &lt;<a href=3D"mailto:gregkh@linuxfoundation.org" target=3D=
"_blank">gregkh@linuxfoundation.org</a>&gt;: Oct 12 05:01PM -0700
      </span>
      <br><br>
      On Mon, Oct 12, 2015 at 10:00:30PM +0300, Ioana Ciornei wrote:<br>
=C2=A0<br>
&gt; &gt; If checkpatch complains about this then it&#39;s a false positive=
.<br>
=C2=A0<br>
&gt; Yes, checkpatch generated a warning and also there were no
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b28=
11a05f8549?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Ioana Ciornei &lt;<a href=3D"mailto:ciorneiioana@gmail.com" target=
=3D"_blank">ciorneiioana@gmail.com</a>&gt;: Oct 13 08:47AM +0300
      </span>
      <br><br>
      &gt; On Mon, Oct 12, 2015 at 10:00:30PM +0300, Ioana Ciornei wrote:<b=
r>
&gt;&gt; On Mon, Oct 12, 2015 at 7:38 PM, Daniel Baluta &lt;<a href=3D"mail=
to:daniel.baluta@gmail.com" target=3D"_blank">daniel.baluta@gmail.com</a>&g=
t;<br>
wrote:<br>
&gt;&gt; &gt; On Fri, Oct 9, 2015 at 10:51 PM, Ioana
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b3a=
fd02d9f0c1?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Ioana Ciornei &lt;<a href=3D"mailto:ciorneiioana@gmail.com" target=
=3D"_blank">ciorneiioana@gmail.com</a>&gt;: Oct 13 12:52PM +0300
      </span>
      <br><br>
      &gt; &gt; -                               kasprintf(GFP_KERNEL,<br>
=C2=A0<br>
&gt; This line looks good to me as it is. Is there any particular reason<br=
>
&gt; for which you we want GFP_KERNEL to be moved on the next line?<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b48=
5e02d6f116?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"=
_blank">julia.lawall@lip6.fr</a>&gt;: Oct 13 11:56AM +0200
      </span>
      <br><br>
     =20
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b48=
969c74eae1?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Ioana Ciornei &lt;<a href=3D"mailto:ciorneiioana@gmail.com" target=
=3D"_blank">ciorneiioana@gmail.com</a>&gt;: Oct 13 01:05PM +0300
      </span>
      <br><br>
      &gt; Do the other arguments not fit if they are lines up with the rig=
ht side of<br>
&gt; the (?  Perhaps it is possible to break up the longer arguments more s=
o<br>
&gt; that they fit better?<br>
=C2=A0<br>
The first argument
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b49=
13fb8d92e3?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"=
_blank">julia.lawall@lip6.fr</a>&gt;: Oct 13 12:19PM +0200
      </span>
      <br><br>
     =20
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b49=
cc88126c96?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Sudip Mukherjee &lt;<a href=3D"mailto:sudipm.mukherjee@gmail.com" t=
arget=3D"_blank">sudipm.mukherjee@gmail.com</a>&gt;: Oct 13 05:21PM +0530
      </span>
      <br><br>
      On Tue, Oct 13, 2015 at 01:05:58PM +0300, Ioana Ciornei wrote:<br>
&gt; If use a variable instead of &#39;dev * AD7280A_CELLS_PER_DEV + ch&#39=
; all<br>
&gt; the problems would be solved.<br>
=C2=A0<br>
&gt; Is this a proper way to
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b4e=
d20418c7c4?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"=
_blank">julia.lawall@lip6.fr</a>&gt;: Oct 13 01:52PM +0200
      </span>
      <br><br>
     =20
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b4e=
df7c04bc29?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Daniel Baluta &lt;<a href=3D"mailto:daniel.baluta@gmail.com" target=
=3D"_blank">daniel.baluta@gmail.com</a>&gt;: Oct 13 02:54PM +0300
      </span>
      <br><br>
      &gt; If use a variable instead of &#39;dev * AD7280A_CELLS_PER_DEV + =
ch&#39; all<br>
&gt; the problems would be solved.<br>
=C2=A0<br>
&gt; Is this a proper way to handle it?<br>
=C2=A0<br>
=C2=A0<br>
There will be one line of 81 chars.
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b4f=
022032fd87?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b966843=
9c_digest_top">Back to top</a>
  </div>


 =20
  <a name=3D"1506129b9668439c_group_thread_2"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/18f936bf40=
67ddce?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;=
color:#1155cc;text-decoration:none" target=3D"_blank">
      [PATCH] Staging: wilc1000: wilc_wlan: Remove unnecessary cast
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com" targe=
t=3D"_blank">shivanib134@gmail.com</a>&gt;: Oct 13 05:04PM +0530
      </span>
      <br><br>
      Remove cast which is not required.<br>
Semantic patch used:<br>
@@<br>
type T;<br>
T e;<br>
identifier x;<br>
@@<br>
=C2=A0<br>
* T x =3D (T)e;<br>
=C2=A0<br>
Signed-off-by: Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com=
" target=3D"_blank">shivanib134@gmail.com</a>&gt;<br>
---
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b4d=
eee2f886b2?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b966843=
9c_digest_top">Back to top</a>
  </div>


 =20
  <a name=3D"1506129b9668439c_group_thread_3"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/cbaf50ee25=
137fd5?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;=
color:#1155cc;text-decoration:none" target=3D"_blank">
      [PATCH 0/2] Fix various issues
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com" targe=
t=3D"_blank">shivanib134@gmail.com</a>&gt;: Oct 13 04:33PM +0530
      </span>
      <br><br>
      This patch removes unused code and changes the variable type to more<=
br>
effective one.<br>
After applying this patch, code becomes better.<br>
=C2=A0<br>
Shivani Bhardwaj (2):<br>
  Staging: wilc1000:
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b4c=
400fa2e36e?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com" targe=
t=3D"_blank">shivanib134@gmail.com</a>&gt;: Oct 13 04:34PM +0530
      </span>
      <br><br>
      Remove a flag variable which is not used anywhere in the code.<br>
Semantic patch used:<br>
=C2=A0<br>
@@<br>
type T;<br>
identifier i;<br>
constant C;<br>
position p !=3D e.p;<br>
@@<br>
=C2=A0<br>
- T i@p;<br>
  &lt;+... when !=3D i<br>
- i =3D C;
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b4c=
44806dd648?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com" targe=
t=3D"_blank">shivanib134@gmail.com</a>&gt;: Oct 13 04:34PM +0530
      </span>
      <br><br>
      Change variable of the type u8 to bool as the only values acquired by=
 it<br>
are true or false.<br>
=C2=A0<br>
Signed-off-by: Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com=
" target=3D"_blank">shivanib134@gmail.com</a>&gt;<br>
---
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b4c=
491de59a56?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"=
_blank">julia.lawall@lip6.fr</a>&gt;: Oct 13 01:20PM +0200
      </span>
      <br><br>
     =20
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b4d=
21ae5aa5b9?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b966843=
9c_digest_top">Back to top</a>
  </div>


 =20
  <a name=3D"1506129b9668439c_group_thread_4"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/f1c71247e4=
dde304?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;=
color:#1155cc;text-decoration:none" target=3D"_blank">
      [PATCH v3 0/3] Fix issues discovered by coccinelle
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com" targe=
t=3D"_blank">shivanib134@gmail.com</a>&gt;: Oct 13 12:36PM +0530
      </span>
      <br><br>
      This patch removes extra NULL tests, extra casts and irrelevant<br>
typedefs and code.<br>
After applying this patch, code becomes cleaner.<br>
=C2=A0<br>
Shivani Bhardwaj (3):<br>
  Staging: wilc1000: host_interface:
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b3f=
46bfbede9a?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com" targe=
t=3D"_blank">shivanib134@gmail.com</a>&gt;: Oct 13 12:36PM +0530
      </span>
      <br><br>
      Remove NULL test on a variable as it is preceded by another NULL<br>
test on the same variable in the code. Also, it is unnecessary to<br>
NULL test before kfree().<br>
Semantic patch used:<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b3f=
4df522933d?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com" targe=
t=3D"_blank">shivanib134@gmail.com</a>&gt;: Oct 13 12:37PM +0530
      </span>
      <br><br>
      Remove a typedef and the code that is not required.<br>
Semantic patch used:<br>
=C2=A0<br>
@@<br>
type T;<br>
identifier i;<br>
constant C;<br>
position p !=3D e.p;<br>
@@<br>
=C2=A0<br>
- T i@p;<br>
  &lt;+... when !=3D i<br>
- i =3D C;<br>
  ...+&gt;<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b3f=
581e2e8e24?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com" targe=
t=3D"_blank">shivanib134@gmail.com</a>&gt;: Oct 13 12:38PM +0530
      </span>
      <br><br>
      Remove irrelevant cast throughout the code.<br>
Semantic patch used:<br>
=C2=A0<br>
@@<br>
type T;<br>
T e;<br>
identifier x;<br>
@@<br>
=C2=A0<br>
* T x =3D (T)e;<br>
=C2=A0<br>
Signed-off-by: Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com=
" target=3D"_blank">shivanib134@gmail.com</a>&gt;<br>
---
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b3f=
60dab55614?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Daniel Baluta &lt;<a href=3D"mailto:daniel.baluta@gmail.com" target=
=3D"_blank">daniel.baluta@gmail.com</a>&gt;: Oct 13 10:45AM +0300
      </span>
      <br><br>
      On Tue, Oct 13, 2015 at 10:06 AM, Shivani Bhardwaj<br>
&gt; - }<br>
&gt; + kfree(E);<br>
=C2=A0<br>
&gt; Signed-off-by: Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmai=
l.com" target=3D"_blank">shivanib134@gmail.com</a>&gt;<br>
=C2=A0<br>
Reviewed-by: Daniel Baluta &lt;<a href=3D"mailto:daniel.baluta@intel.com" t=
arget=3D"_blank">daniel.baluta@intel.com</a>&gt;<br>
=C2=A0<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b41=
67ef704bcc?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"=
_blank">julia.lawall@lip6.fr</a>&gt;: Oct 13 09:49AM +0200
      </span>
      <br><br>
     =20
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b41=
9ff9c204ac?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com" targe=
t=3D"_blank">shivanib134@gmail.com</a>&gt;: Oct 13 01:21PM +0530
      </span>
      <br><br>
      &gt; - (T)<br>
&gt;   e;<br>
=C2=A0<br>
&gt; julia<br>
=C2=A0<br>
Thanks, Julia. :)<br>
=C2=A0<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b41=
b742c73874?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com" targe=
t=3D"_blank">shivanib134@gmail.com</a>&gt;: Oct 13 04:18PM +0530
      </span>
      <br><br>
      &gt;&gt; - (T)<br>
&gt;&gt;   e;<br>
=C2=A0<br>
&gt;&gt; julia<br>
=C2=A0<br>
Going by the usual way cocci scripts are written, is writing the<br>
following to make the change wrong?<br>
@@<br>
type T;<br>
T e;<br>
identifier x;<br>
@@<br>
=C2=A0<br>
- * T x =3D (T)e;
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b4b=
60b43d6cc8?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"=
_blank">julia.lawall@lip6.fr</a>&gt;: Oct 13 01:18PM +0200
      </span>
      <br><br>
     =20
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b4d=
0bde94f308?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b966843=
9c_digest_top">Back to top</a>
  </div>


 =20
  <a name=3D"1506129b9668439c_group_thread_5"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/9f333cbe7f=
10286e?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;=
color:#1155cc;text-decoration:none" target=3D"_blank">
      [PATCH v2] Staging: wilc1000: wilc_wfi_cfgoperations: Remove unnecess=
ary constants
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com" targe=
t=3D"_blank">shivanib134@gmail.com</a>&gt;: Oct 13 03:55PM +0530
      </span>
      <br><br>
      Remove constants wherever not required and change variables to bool t=
ype<br>
to get rid of constants.<br>
Semantic patch used:<br>
=C2=A0<br>
@@<br>
type T;<br>
identifier i;<br>
constant C;<br>
position p !=3D e.p;<br>
@@<br>
=C2=A0<br>
- T i@p;
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b4a=
2af3a8321b?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"=
_blank">julia.lawall@lip6.fr</a>&gt;: Oct 13 12:41PM +0200
      </span>
      <br><br>
     =20
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b4b=
0a392a7203?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com" targe=
t=3D"_blank">shivanib134@gmail.com</a>&gt;: Oct 13 04:14PM +0530
      </span>
      <br><br>
      <br>
&gt; Actually, my thought was to have a bool variable called pmkid_found.  =
That<br>
&gt; would be more understandable than flag.<br>
=C2=A0<br>
&gt; Also the initial value should be false, not 0.<br>
=C2=A0<br>
Fine.
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b4b=
30c2ae7cbf?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b966843=
9c_digest_top">Back to top</a>
  </div>


 =20
  <a name=3D"1506129b9668439c_group_thread_6"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/d1a40dc6a2=
ca95e9?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;=
color:#1155cc;text-decoration:none" target=3D"_blank">
      [PATCH] Staging: wilc1000: wilc_wfi_cfgoperations: Remove unused code
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com" targe=
t=3D"_blank">shivanib134@gmail.com</a>&gt;: Oct 13 03:18PM +0530
      </span>
      <br><br>
      Remove the declaration, initialization and statement having a<br>
variable that is not used anywhere in the code.<br>
Semantic patch used:<br>
=C2=A0<br>
@@<br>
type T;<br>
identifier i;<br>
constant C;<br>
position p !=3D e.p;<br>
@@
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b48=
281d722cb6?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"=
_blank">julia.lawall@lip6.fr</a>&gt;: Oct 13 11:54AM +0200
      </span>
      <br><br>
     =20
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b48=
6efbd43b71?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b966843=
9c_digest_top">Back to top</a>
  </div>


 =20
  <a name=3D"1506129b9668439c_group_thread_7"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/491431a1e1=
b965a2?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;=
color:#1155cc;text-decoration:none" target=3D"_blank">
      [PATCH 0/3] Remove useless cast on void pointer
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Amitoj Kaur Chawla &lt;<a href=3D"mailto:amitoj1606@gmail.com" targ=
et=3D"_blank">amitoj1606@gmail.com</a>&gt;: Oct 13 01:35PM +0530
      </span>
      <br><br>
      This patchset removes multiple useless cast on void pointer.<br>
=C2=A0<br>
Amitoj Kaur Chawla (3):<br>
  staging: rtl8712: Remove useless cast on void pointer<br>
  staging: rtl8712: Remove useless cast on void
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b42=
7ddb274975?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Amitoj Kaur Chawla &lt;<a href=3D"mailto:amitoj1606@gmail.com" targ=
et=3D"_blank">amitoj1606@gmail.com</a>&gt;: Oct 13 01:36PM +0530
      </span>
      <br><br>
      The semantic patch used to find this is:<br>
=C2=A0<br>
@r@<br>
expression x;<br>
void* e;<br>
type T;<br>
identifier f;<br>
@@<br>
=C2=A0<br>
(<br>
  *((T *)e)<br>
|<br>
  ((T *)x)[...]<br>
|<br>
  ((T *)x)-&gt;f<br>
|<br>
- (T *)<br>
  e<br>
)<br>
=C2=A0<br>
Signed-off-by:
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b42=
954408b53d?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Amitoj Kaur Chawla &lt;<a href=3D"mailto:amitoj1606@gmail.com" targ=
et=3D"_blank">amitoj1606@gmail.com</a>&gt;: Oct 13 01:37PM +0530
      </span>
      <br><br>
      The semantic patch used to find this is:<br>
=C2=A0<br>
@r@<br>
expression x;<br>
void* e;<br>
type T;<br>
identifier f;<br>
@@<br>
=C2=A0<br>
(<br>
  *((T *)e)<br>
|<br>
  ((T *)x)[...]<br>
|<br>
  ((T *)x)-&gt;f<br>
|<br>
- (T *)<br>
  e<br>
)<br>
=C2=A0<br>
Signed-off-by:
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b42=
a30993eb79?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Amitoj Kaur Chawla &lt;<a href=3D"mailto:amitoj1606@gmail.com" targ=
et=3D"_blank">amitoj1606@gmail.com</a>&gt;: Oct 13 01:38PM +0530
      </span>
      <br><br>
      The semantic patch used to find this is:<br>
=C2=A0<br>
@r@<br>
expression x;<br>
void* e;<br>
type T;<br>
identifier f;<br>
@@<br>
=C2=A0<br>
(<br>
  *((T *)e)<br>
|<br>
  ((T *)x)[...]<br>
|<br>
  ((T *)x)-&gt;f<br>
|<br>
- (T *)<br>
  e<br>
)<br>
=C2=A0<br>
Signed-off-by:
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b42=
af6a26dcb0?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"=
_blank">julia.lawall@lip6.fr</a>&gt;: Oct 13 10:11AM +0200
      </span>
      <br><br>
     =20
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b42=
ce37e011c8?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Amitoj Kaur Chawla &lt;<a href=3D"mailto:amitoj1606@gmail.com" targ=
et=3D"_blank">amitoj1606@gmail.com</a>&gt;: Oct 13 01:44PM +0530
      </span>
      <br><br>
      &gt; of the cast, it would be reasonable to also drop them.<br>
=C2=A0<br>
&gt; Likewise elsewhere.<br>
=C2=A0<br>
&gt; julia<br>
=C2=A0<br>
Will do. Sending v2.<br>
=C2=A0<br>
=C2=A0<br>
-- <br>
Amitoj<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b43=
03241a7a8b?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Amitoj Kaur Chawla &lt;<a href=3D"mailto:amitoj1606@gmail.com" targ=
et=3D"_blank">amitoj1606@gmail.com</a>&gt;: Oct 13 02:03PM +0530
      </span>
      <br><br>
      This patchset removes multiple useless cast on void pointer.<br>
=C2=A0<br>
The semantic patch used to find this is:<br>
=C2=A0<br>
@r@<br>
expression x;<br>
void* e;<br>
type T;<br>
identifier f;<br>
@@<br>
=C2=A0<br>
(<br>
  *((T *)e)<br>
|
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b44=
0bb84843ba?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Amitoj Kaur Chawla &lt;<a href=3D"mailto:amitoj1606@gmail.com" targ=
et=3D"_blank">amitoj1606@gmail.com</a>&gt;: Oct 13 02:05PM +0530
      </span>
      <br><br>
      The semantic patch used to find this is:<br>
=C2=A0<br>
@r@<br>
expression x;<br>
void* e;<br>
type T;<br>
identifier f;<br>
@@<br>
=C2=A0<br>
(<br>
  *((T *)e)<br>
|<br>
  ((T *)x)[...]<br>
|<br>
  ((T *)x)-&gt;f<br>
|<br>
- (T *)<br>
  e<br>
)<br>
=C2=A0<br>
=C2=A0<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b44=
2382eca1c2?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Amitoj Kaur Chawla &lt;<a href=3D"mailto:amitoj1606@gmail.com" targ=
et=3D"_blank">amitoj1606@gmail.com</a>&gt;: Oct 13 02:06PM +0530
      </span>
      <br><br>
      The semantic patch used to find this is:<br>
=C2=A0<br>
@r@<br>
expression x;<br>
void* e;<br>
type T;<br>
identifier f;<br>
@@<br>
=C2=A0<br>
(<br>
  *((T *)e)<br>
|<br>
  ((T *)x)[...]<br>
|<br>
  ((T *)x)-&gt;f<br>
|<br>
- (T *)<br>
  e<br>
)<br>
=C2=A0<br>
=C2=A0<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b44=
348d331739?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Amitoj Kaur Chawla &lt;<a href=3D"mailto:amitoj1606@gmail.com" targ=
et=3D"_blank">amitoj1606@gmail.com</a>&gt;: Oct 13 02:08PM +0530
      </span>
      <br><br>
      The semantic patch used to find this is:<br>
=C2=A0<br>
@r@<br>
expression x;<br>
void* e;<br>
type T;<br>
identifier f;<br>
@@<br>
=C2=A0<br>
(<br>
  *((T *)e)<br>
|<br>
  ((T *)x)[...]<br>
|<br>
  ((T *)x)-&gt;f<br>
|<br>
- (T *)<br>
  e<br>
)<br>
=C2=A0<br>
=C2=A0<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b44=
486a0d8575?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"=
_blank">julia.lawall@lip6.fr</a>&gt;: Oct 13 10:38AM +0200
      </span>
      <br><br>
     =20
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b44=
553dcae32d?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Amitoj Kaur Chawla &lt;<a href=3D"mailto:amitoj1606@gmail.com" targ=
et=3D"_blank">amitoj1606@gmail.com</a>&gt;: Oct 13 02:19PM +0530
      </span>
      <br><br>
      &gt;&gt; )<br>
=C2=A0<br>
&gt; When you make a change by hand beyond what the semantic patch does, it=
<br>
&gt; should be mentioned up here, not just below the ---.<br>
=C2=A0<br>
 Oh, okay. Will keep that in mind for the future.<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b44=
e2828cb6d9?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b966843=
9c_digest_top">Back to top</a>
  </div>


 =20
  <a name=3D"1506129b9668439c_group_thread_8"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/76de83f71c=
fb3011?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;=
color:#1155cc;text-decoration:none" target=3D"_blank">
      [PATCH 1/2] Staging: wilc1000: host_interface: Use kmemdup instead of=
 kmalloc and memcpy
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Greg KH &lt;<a href=3D"mailto:gregkh@linuxfoundation.org" target=3D=
"_blank">gregkh@linuxfoundation.org</a>&gt;: Oct 12 09:01PM -0700
      </span>
      <br><br>
      On Sun, Oct 11, 2015 at 10:01:36PM +0530, Shraddha Barke wrote:<br>
&gt; ---<br>
&gt;  drivers/staging/wilc1000/host_interface.c | 14 ++++++--------<br>
&gt;  1 file changed, 6 insertions(+), 8 deletions(-)<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b3a=
f57bfe1813?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b966843=
9c_digest_top">Back to top</a>
  </div>


 =20
  <a name=3D"1506129b9668439c_group_thread_9"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/2e7a3e039f=
1942?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;co=
lor:#1155cc;text-decoration:none" target=3D"_blank">
      [PATCH] staging: sm750fb: Remove multiple blank lines
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Greg KH &lt;<a href=3D"mailto:gregkh@linuxfoundation.org" target=3D=
"_blank">gregkh@linuxfoundation.org</a>&gt;: Oct 12 08:33PM -0700
      </span>
      <br><br>
      On Fri, Oct 09, 2015 at 11:57:38AM +0530, Amitoj Kaur Chawla wrote:<b=
r>
&gt; ---<br>
&gt;  drivers/staging/sm750fb/ddk750_chip.c | 3 ---<br>
&gt;  1 file changed, 3 deletions(-)<br>
=C2=A0<br>
This doesn&#39;t apply to my
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b3a=
94920879ae?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b966843=
9c_digest_top">Back to top</a>
  </div>


 =20
  <a name=3D"1506129b9668439c_group_thread_10"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/8098151244=
e36971?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;=
color:#1155cc;text-decoration:none" target=3D"_blank">
      sending patch revisions w mutt ???
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Alison Schofield &lt;<a href=3D"mailto:amsfield22@gmail.com" target=
=3D"_blank">amsfield22@gmail.com</a>&gt;: Oct 12 02:35PM -0700
      </span>
      <br><br>
      On Mon, Oct 12, 2015 at 03:36:23PM +0530, Sudip Mukherjee wrote:<br>
&gt; send-email.<br>
=C2=A0<br>
&gt; regards<br>
&gt; sudip<br>
=C2=A0<br>
Thanks Sudip!  I used git send-email today. (I still hold out hope of<br>
finding mutt instructs
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b20=
1901c39029?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Greg KH &lt;<a href=3D"mailto:gregkh@linuxfoundation.org" target=3D=
"_blank">gregkh@linuxfoundation.org</a>&gt;: Oct 12 04:40PM -0700
      </span>
      <br><br>
      On Sat, Oct 10, 2015 at 06:52:27PM -0700, Alison Schofield wrote:<br>
=C2=A0<br>
&gt; Is there a better way?<br>
=C2=A0<br>
&gt; Also, do you want it threaded right on top, ie. in reply to the previo=
us<br>
&gt; patch message.<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b27=
b01ff30fa0?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b966843=
9c_digest_top">Back to top</a>
  </div>


 =20
  <a name=3D"1506129b9668439c_group_thread_11"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/16849a895f=
ab7dc6?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;=
color:#1155cc;text-decoration:none" target=3D"_blank">
      [PATCH] staging: lustre: llite: Remove useless cast on void pointer
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Amitoj Kaur Chawla &lt;<a href=3D"mailto:amitoj1606@gmail.com" targ=
et=3D"_blank">amitoj1606@gmail.com</a>&gt;: Oct 13 03:13AM +0530
      </span>
      <br><br>
      The semantic patch used to find this is:<br>
=C2=A0<br>
@r@<br>
expression x;<br>
void* e;<br>
type T;<br>
identifier f;<br>
@@<br>
=C2=A0<br>
(<br>
  *((T *)e)<br>
|<br>
  ((T *)x)[...]<br>
|<br>
  ((T *)x)-&gt;f<br>
|<br>
- (T *)<br>
  e<br>
)<br>
=C2=A0<br>
Signed-off-by:
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b20=
8a1c8cef58?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b966843=
9c_digest_top">Back to top</a>
  </div>


 =20
  <a name=3D"1506129b9668439c_group_thread_12"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/3a3541d58e=
33a1bb?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;=
color:#1155cc;text-decoration:none" target=3D"_blank">
      [PATCH v2] staging: rdma: hfi1: remove unnecessary out of memory mess=
ages
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Alison Schofield &lt;<a href=3D"mailto:amsfield22@gmail.com" target=
=3D"_blank">amsfield22@gmail.com</a>&gt;: Oct 12 02:28PM -0700
      </span>
      <br><br>
      Out of memory messages are unnecssary in the drivers as they are<br>
reported by memory management.<br>
=C2=A0<br>
Addresses <a href=3D"http://checkpatch.pl" target=3D"_blank">checkpatch.pl<=
/a>: WARNING: Possible unnecessary &#39;out of memory&#39; message<br>
=C2=A0<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b1f=
c10b44b2a2?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b966843=
9c_digest_top">Back to top</a>
  </div>


 =20
  <a name=3D"1506129b9668439c_group_thread_13"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/de940d28cc=
f2cf40?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;=
color:#1155cc;text-decoration:none" target=3D"_blank">
      [PATCH v2] staging: gdmwm: move variables to right side of comparison=
 test
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Alison Schofield &lt;<a href=3D"mailto:amsfield22@gmail.com" target=
=3D"_blank">amsfield22@gmail.com</a>&gt;: Oct 12 01:53PM -0700
      </span>
      <br><br>
      Move variables to right side of comparison test to improve readabilit=
y.<br>
=C2=A0<br>
Signed-off-by: Alison Schofield &lt;<a href=3D"mailto:amsfield22@gmail.com"=
 target=3D"_blank">amsfield22@gmail.com</a>&gt;<br>
---<br>
=C2=A0<br>
Changes in v2: clarified commit message and description<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b1d=
d5494f928b?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b966843=
9c_digest_top">Back to top</a>
  </div>


 =20
  <a name=3D"1506129b9668439c_group_thread_14"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/f17101de2b=
6e3af6?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;=
color:#1155cc;text-decoration:none" target=3D"_blank">
      [PATCH v2] staging: wilc1000: move open brace in line with control fl=
ow statement
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Alison Schofield &lt;<a href=3D"mailto:amsfield22@gmail.com" target=
=3D"_blank">amsfield22@gmail.com</a>&gt;: Oct 12 01:22PM -0700
      </span>
      <br><br>
      Move open braces to be in line with &quot;if&quot; control flow state=
ments.<br>
Addresses <a href=3D"http://checkpatch.pl" target=3D"_blank">checkpatch.pl<=
/a>:<br>
	ERROR: that open brace { should be on the previous line<br>
=C2=A0<br>
Signed-off-by: Alison Schofield
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b1c=
29990fb6fd?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b966843=
9c_digest_top">Back to top</a>
  </div>


 =20
  <a name=3D"1506129b9668439c_group_thread_15"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/95216c0a3b=
0a3e09?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;=
color:#1155cc;text-decoration:none" target=3D"_blank">
      [PATCH 0/3] Fix issues detected by coccinelle
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com" targe=
t=3D"_blank">shivanib134@gmail.com</a>&gt;: Oct 12 07:04PM +0530
      </span>
      <br><br>
      Replace appropriate functions with kzalloc(), fix NULL tests<br>
and remove unnecessary code.<br>
After applying this patch, code becomes better.<br>
=C2=A0<br>
Shivani Bhardwaj (3):<br>
  Staging: wilc1000:
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b05=
e453471548?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com" targe=
t=3D"_blank">shivanib134@gmail.com</a>&gt;: Oct 12 07:05PM +0530
      </span>
      <br><br>
      Replace the function kmalloc and following memset function with a<br>
single function kzalloc.<br>
Issue found using coccinelle.<br>
=C2=A0<br>
Signed-off-by: Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com=
" target=3D"_blank">shivanib134@gmail.com</a>&gt;<br>
---
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b05=
edc6d71da7?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com" targe=
t=3D"_blank">shivanib134@gmail.com</a>&gt;: Oct 12 07:05PM +0530
      </span>
      <br><br>
      Remove NULL test statement as it is preceded by another NULL test on =
the<br>
same variable in the code.<br>
Issue found using coccinelle.<br>
=C2=A0<br>
Signed-off-by: Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com=
" target=3D"_blank">shivanib134@gmail.com</a>&gt;<br>
---
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b05=
f631cfdac8?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com" targe=
t=3D"_blank">shivanib134@gmail.com</a>&gt;: Oct 12 07:06PM +0530
      </span>
      <br><br>
      Remove declaration and initialization of variables that are not used<=
br>
anywhere in the code.<br>
Issue found using coccinelle.<br>
=C2=A0<br>
Signed-off-by: Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com=
" target=3D"_blank">shivanib134@gmail.com</a>&gt;<br>
---
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b05=
fec77deee4?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shraddha Barke &lt;<a href=3D"mailto:shraddha.6596@gmail.com" targe=
t=3D"_blank">shraddha.6596@gmail.com</a>&gt;: Oct 12 07:15PM +0530
      </span>
      <br><br>
     =20
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b06=
8366635084?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"=
_blank">julia.lawall@lip6.fr</a>&gt;: Oct 12 03:54PM +0200
      </span>
      <br><br>
     =20
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b06=
f6cfdc1e6f?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com" targe=
t=3D"_blank">shivanib134@gmail.com</a>&gt;: Oct 12 07:51PM +0530
      </span>
      <br><br>
      <br>
&gt; * T x =3D (T)e;<br>
=C2=A0<br>
&gt; will highlight initializations with useless casts.<br>
=C2=A0<br>
&gt; julia<br>
=C2=A0<br>
Thanks so much, Julia. I&#39;m applying all of this. Thank you for the<br>
coccinelle script. Also, I want to know that
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b08=
75470e09a7?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"=
_blank">julia.lawall@lip6.fr</a>&gt;: Oct 12 04:27PM +0200
      </span>
      <br><br>
     =20
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b08=
cb4d72210a?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com" targe=
t=3D"_blank">shivanib134@gmail.com</a>&gt;: Oct 12 08:54PM +0530
      </span>
      <br><br>
      &gt; declaration updated to remove the type too, and as much of the r=
est as you<br>
&gt; want to do in the short term.<br>
=C2=A0<br>
&gt; julia<br>
=C2=A0<br>
OK. Thanks. I&#39;m sending v2.<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b0b=
def0337b5d?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shraddha Barke &lt;<a href=3D"mailto:shraddha.6596@gmail.com" targe=
t=3D"_blank">shraddha.6596@gmail.com</a>&gt;: Oct 12 09:12PM +0530
      </span>
      <br><br>
     =20
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b0c=
dd25a14cf4?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com" targe=
t=3D"_blank">shivanib134@gmail.com</a>&gt;: Oct 12 09:18PM +0530
      </span>
      <br><br>
      &gt; file. There are other instances of unnecessary null test which c=
an be<br>
&gt; found using Coccinelle.I didn&#39;t work on this one since you already=
 are :)<br>
=C2=A0<br>
&gt; Shraddha<br>
=C2=A0<br>
Thanks! Are you writing your own
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b0d=
369b6f07b1?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com" targe=
t=3D"_blank">shivanib134@gmail.com</a>&gt;: Oct 12 11:00PM +0530
      </span>
      <br><br>
      This patch removes useless casts and code.<br>
After applying this patch, code becomes better and compact.<br>
=C2=A0<br>
Shivani Bhardwaj (3):<br>
  Staging: wilc1000: host_interface: Remove extra NULL test
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b12=
c44b1be472?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com" targe=
t=3D"_blank">shivanib134@gmail.com</a>&gt;: Oct 12 11:02PM +0530
      </span>
      <br><br>
      Remove NULL test statement as it is preceded by another NULL test on =
the<br>
same variable in the code.<br>
Issue found using coccinelle.<br>
=C2=A0<br>
Signed-off-by: Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com=
" target=3D"_blank">shivanib134@gmail.com</a>&gt;<br>
---
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b12=
d96d25bf03?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com" targe=
t=3D"_blank">shivanib134@gmail.com</a>&gt;: Oct 12 11:02PM +0530
      </span>
      <br><br>
      Remove useless casts that occur throughout the code.<br>
Issue detected using coccinelle.<br>
=C2=A0<br>
Signed-off-by: Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com=
" target=3D"_blank">shivanib134@gmail.com</a>&gt;<br>
---<br>
Changes in v2:<br>
        Deleted one patch and
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b12=
e6b63e26b0?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com" targe=
t=3D"_blank">shivanib134@gmail.com</a>&gt;: Oct 12 11:03PM +0530
      </span>
      <br><br>
      Remove declaration and initialization of variables that are not used<=
br>
anywhere in the code.<br>
Issue found using coccinelle.<br>
=C2=A0<br>
Signed-off-by: Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com=
" target=3D"_blank">shivanib134@gmail.com</a>&gt;<br>
---
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b12=
f0961d3735?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Daniel Baluta &lt;<a href=3D"mailto:daniel.baluta@gmail.com" target=
=3D"_blank">daniel.baluta@gmail.com</a>&gt;: Oct 12 09:00PM +0300
      </span>
      <br><br>
      <br>
&gt; -       if (pstrWFIDrv !=3D NULL) {<br>
&gt;                 kfree(pstrWFIDrv);<br>
&gt;                 /* pstrWFIDrv=3DNULL; */<br>
=C2=A0<br>
You should also remove this comment.<br>
=C2=A0<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b14=
6928861bd3?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Arnd Bergmann &lt;<a href=3D"mailto:arnd@arndb.de" target=3D"_blank=
">arnd@arndb.de</a>&gt;: Oct 12 08:47PM +0200
      </span>
      <br><br>
      On Monday 12 October 2015 23:03:33 Shivani Bhardwaj wrote:<br>
&gt; anywhere in the code.<br>
&gt; Issue found using coccinelle.<br>
=C2=A0<br>
&gt; Signed-off-by: Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmai=
l.com" target=3D"_blank">shivanib134@gmail.com</a>&gt;<br>
=C2=A0<br>
Nice find!<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b16=
f27d653fba?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Arnd Bergmann &lt;<a href=3D"mailto:arnd@arndb.de" target=3D"_blank=
">arnd@arndb.de</a>&gt;: Oct 12 08:49PM +0200
      </span>
      <br><br>
      On Monday 12 October 2015 23:02:53 Shivani Bhardwaj wrote:<br>
&gt; -       tstrWILC_WFIDrv *pstrWFIDrv =3D (tstrWILC_WFIDrv *)drvHandler;=
<br>
=C2=A0<br>
&gt;         /*prepare configuration packet*/<br>
&gt;       =20
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b17=
0a302baca0?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Arnd Bergmann &lt;<a href=3D"mailto:arnd@arndb.de" target=3D"_blank=
">arnd@arndb.de</a>&gt;: Oct 12 08:50PM +0200
      </span>
      <br><br>
      On Monday 12 October 2015 23:02:01 Shivani Bhardwaj wrote:<br>
&gt;         Deleted one patch and added another. Improved the other ones.<=
br>
&gt;  drivers/staging/wilc1000/host_interface.c | 3 ---
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b17=
24bb7797b6?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com" targe=
t=3D"_blank">shivanib134@gmail.com</a>&gt;: Oct 13 12:21AM +0530
      </span>
      <br><br>
      &gt; can be removed. I haven&#39;t checked the other variables, but I=
&#39;d guess<br>
&gt; that the same is true for them, because gcc tends to warn otherwise.<b=
r>
=C2=A0<br>
&gt;         Arnd<br>
=C2=A0<br>
Yes, Arnd. I&#39;ve just removed the
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b17=
301ad44ba3?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com" targe=
t=3D"_blank">shivanib134@gmail.com</a>&gt;: Oct 13 12:22AM +0530
      </span>
      <br><br>
      &gt; to the left. Also, the comment behind it can be removed in the s=
ame<br>
&gt; patch.<br>
=C2=A0<br>
&gt;         Arnd<br>
Yes, I&#39;m fixing that and removing the comment. Sending v3.<br>
thank you.<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b17=
3ba2d48e5b?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"=
_blank">julia.lawall@lip6.fr</a>&gt;: Oct 12 09:26PM +0200
      </span>
      <br><br>
     =20
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b19=
15e68b8ed2?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"=
_blank">julia.lawall@lip6.fr</a>&gt;: Oct 12 09:28PM +0200
      </span>
      <br><br>
     =20
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b19=
2db77be613?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"=
_blank">julia.lawall@lip6.fr</a>&gt;: Oct 12 09:34PM +0200
      </span>
      <br><br>
     =20
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b19=
8adb79d72b?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com" targe=
t=3D"_blank">shivanib134@gmail.com</a>&gt;: Oct 13 01:17AM +0530
      </span>
      <br><br>
      <br>
&gt; This is too much.  I think the varialbe is still used?  You should jus=
t<br>
&gt; remove the (tstrWILC_WFIDrv *).<br>
=C2=A0<br>
&gt; julia<br>
=C2=A0<br>
I just realized what Arnd had to say. I&#39;m so sorry. I&#39;m correcting
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b1a=
4132fcd761?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b966843=
9c_digest_top">Back to top</a>
  </div>


 =20
  <a name=3D"1506129b9668439c_group_thread_16"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/7f74f75f5a=
b81fff?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;=
color:#1155cc;text-decoration:none" target=3D"_blank">
      [PATCH] Staging: vt6655: mac: Remove extra braces
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com" targe=
t=3D"_blank">shivanib134@gmail.com</a>&gt;: Oct 12 11:14PM +0530
      </span>
      <br><br>
      Remove braces from an if block as it comprises of a single statement.=
<br>
Fix checkpatch warning: braces {} are not necessary for single statement<br=
>
blocks<br>
=C2=A0<br>
Signed-off-by: Shivani Bhardwaj
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b13=
8374063056?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Daniel Baluta &lt;<a href=3D"mailto:daniel.baluta@gmail.com" target=
=3D"_blank">daniel.baluta@gmail.com</a>&gt;: Oct 12 08:48PM +0300
      </span>
      <br><br>
      &gt; Fix checkpatch warning: braces {} are not necessary for single s=
tatement<br>
&gt; blocks<br>
=C2=A0<br>
&gt; Signed-off-by: Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmai=
l.com" target=3D"_blank">shivanib134@gmail.com</a>&gt;<br>
=C2=A0<br>
Reviewed-by: Daniel Baluta
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b13=
b7923371e0?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b966843=
9c_digest_top">Back to top</a>
  </div>


 =20
  <a name=3D"1506129b9668439c_group_thread_17"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/9823ee8f81=
f3a223?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;=
color:#1155cc;text-decoration:none" target=3D"_blank">
      [PATCH v4 1/3] Staging: rtl8192u: ieee80211: ieee80211_softmac: Remov=
e commented printk messages
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Daniel Baluta &lt;<a href=3D"mailto:daniel.baluta@gmail.com" target=
=3D"_blank">daniel.baluta@gmail.com</a>&gt;: Oct 12 08:24PM +0300
      </span>
      <br><br>
      &gt; Remove commented printk since it is not needed<br>
=C2=A0<br>
&gt; Signed-off-by: Shraddha Barke &lt;<a href=3D"mailto:shraddha.6596@gmai=
l.com" target=3D"_blank">shraddha.6596@gmail.com</a>&gt;<br>
=C2=A0<br>
Reviewed-by: Daniel Baluta &lt;<a href=3D"mailto:daniel.baluta@intel.com" t=
arget=3D"_blank">daniel.baluta@intel.com</a>&gt;<br>
=C2=A0<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b12=
6eb9eeac4c?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Daniel Baluta &lt;<a href=3D"mailto:daniel.baluta@gmail.com" target=
=3D"_blank">daniel.baluta@gmail.com</a>&gt;: Oct 12 08:27PM +0300
      </span>
      <br><br>
      &gt; Remove commented out printk messages since they are not needed<b=
r>
=C2=A0<br>
&gt; Signed-off-by: Shraddha Barke &lt;<a href=3D"mailto:shraddha.6596@gmai=
l.com" target=3D"_blank">shraddha.6596@gmail.com</a>&gt;<br>
=C2=A0<br>
Reviewed-by: Daniel Baluta &lt;<a href=3D"mailto:daniel.baluta@intel.com" t=
arget=3D"_blank">daniel.baluta@intel.com</a>&gt;<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b12=
92a3a6400c?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Daniel Baluta &lt;<a href=3D"mailto:daniel.baluta@gmail.com" target=
=3D"_blank">daniel.baluta@gmail.com</a>&gt;: Oct 12 08:31PM +0300
      </span>
      <br><br>
      &gt; Remove commented out printk messages since they are not needed. =
Also remove<br>
&gt; the unnecessary braces and blank lines<br>
=C2=A0<br>
&gt; Signed-off-by: Shraddha Barke &lt;<a href=3D"mailto:shraddha.6596@gmai=
l.com" target=3D"_blank">shraddha.6596@gmail.com</a>&gt;<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b12=
d35a145c5f?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b966843=
9c_digest_top">Back to top</a>
  </div>


 =20
  <a name=3D"1506129b9668439c_group_thread_18"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/4ae7c031e4=
82edd0?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;=
color:#1155cc;text-decoration:none" target=3D"_blank">
      [PATCH v2 1/2] Staging: vt6655: mac: Remove character limit warning
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Daniel Baluta &lt;<a href=3D"mailto:daniel.baluta@gmail.com" target=
=3D"_blank">daniel.baluta@gmail.com</a>&gt;: Oct 12 08:06PM +0300
      </span>
      <br><br>
      &gt; Break the lines with over 80 characters into sensible chunks of =
data.<br>
&gt; Fixes the chackpacth warning: line over 80 characters<br>
=C2=A0<br>
&gt; Signed-off-by: Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmai=
l.com" target=3D"_blank">shivanib134@gmail.com</a>&gt;<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b11=
724457c77e?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shivani Bhardwaj &lt;<a href=3D"mailto:shivanib134@gmail.com" targe=
t=3D"_blank">shivanib134@gmail.com</a>&gt;: Oct 12 11:01PM +0530
      </span>
      <br><br>
      &gt; +                               unsigned long dwCurrDescAddr)<br=
>
=C2=A0<br>
&gt; thanks,<br>
&gt; Daniel.<br>
I&#39;ll take care next time. Thanks, Daniel.<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b12=
ca44f6e0e1?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b966843=
9c_digest_top">Back to top</a>
  </div>


 =20
  <a name=3D"1506129b9668439c_group_thread_19"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/ccdee4c432=
092ab3?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;=
color:#1155cc;text-decoration:none" target=3D"_blank">
      [PATCH 0/3] Remove NULL check before kfree
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shraddha Barke &lt;<a href=3D"mailto:shraddha.6596@gmail.com" targe=
t=3D"_blank">shraddha.6596@gmail.com</a>&gt;: Oct 12 08:49PM +0530
      </span>
      <br><br>
      These patches remove null check before kfree using the Coccinelle scr=
ipt-<br>
=C2=A0<br>
// &lt;smpl&gt;<br>
@@ expression E; @@<br>
- if (E !=3D NULL) { kfree(E); }<br>
+ kfree(E);<br>
@@ expression E; @@<br>
- if (E !=3D NULL) {
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b0b=
9c4cf050d4?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shraddha Barke &lt;<a href=3D"mailto:shraddha.6596@gmail.com" targe=
t=3D"_blank">shraddha.6596@gmail.com</a>&gt;: Oct 12 08:49PM +0530
      </span>
      <br><br>
      kfree on NULL pointer is a no-op.<br>
The semantic patch used to find such an instance where NULL check is<br>
present before kfree-<br>
=C2=A0<br>
// &lt;smpl&gt;<br>
@@ expression E; @@<br>
- if (E !=3D NULL) { kfree(E); }
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b0b=
9cbdfff01f?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shraddha Barke &lt;<a href=3D"mailto:shraddha.6596@gmail.com" targe=
t=3D"_blank">shraddha.6596@gmail.com</a>&gt;: Oct 12 08:49PM +0530
      </span>
      <br><br>
      kfree on NULL pointer is a no-op.<br>
=C2=A0<br>
The semantic patch used-<br>
=C2=A0<br>
// &lt;smpl&gt;<br>
@@ expression E; @@<br>
- if (E !=3D NULL) { kfree(E); }<br>
+ kfree(E);<br>
@@ expression E; @@<br>
- if (E !=3D NULL) { kfree(E); E =3D
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b0b=
9d56b61e86?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shraddha Barke &lt;<a href=3D"mailto:shraddha.6596@gmail.com" targe=
t=3D"_blank">shraddha.6596@gmail.com</a>&gt;: Oct 12 08:49PM +0530
      </span>
      <br><br>
      kfree on NULL pointer is a no-op.<br>
=C2=A0<br>
The semantic patch used -<br>
=C2=A0<br>
// &lt;smpl&gt;<br>
@@ expression E; @@<br>
- if (E !=3D NULL) { kfree(E); }<br>
+ kfree(E);<br>
@@ expression E; @@<br>
- if (E !=3D NULL) { kfree(E); E =3D
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b0b=
9dd88623de?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"=
_blank">julia.lawall@lip6.fr</a>&gt;: Oct 12 05:26PM +0200
      </span>
      <br><br>
     =20
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b0c=
036c53e616?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Julia Lawall &lt;<a href=3D"mailto:julia.lawall@lip6.fr" target=3D"=
_blank">julia.lawall@lip6.fr</a>&gt;: Oct 12 05:28PM +0200
      </span>
      <br><br>
     =20
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b0c=
1d91278655?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
    <tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-family:ari=
al;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Daniel Baluta &lt;<a href=3D"mailto:daniel.baluta@gmail.com" target=
=3D"_blank">daniel.baluta@gmail.com</a>&gt;: Oct 12 08:20PM +0300
      </span>
      <br><br>
      &gt; + E =3D NULL;<br>
&gt; // &lt;/smpl&gt;smpl&gt;<br>
=C2=A0<br>
&gt; Signed-off-by: Shraddha Barke &lt;<a href=3D"mailto:shraddha.6596@gmai=
l.com" target=3D"_blank">shraddha.6596@gmail.com</a>&gt;<br>
=C2=A0<br>
Reviewed-by: Daniel Baluta &lt;<a href=3D"mailto:daniel.baluta@intel.com" t=
arget=3D"_blank">daniel.baluta@intel.com</a>&gt;<br>
=C2=A0<br>

     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b12=
37a082475d?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b966843=
9c_digest_top">Back to top</a>
  </div>


 =20
  <a name=3D"1506129b9668439c_group_thread_20"></a>
  <div style=3D"display:inline-block;font-family:arial;padding:4px 0 5px 0p=
x">
 =20
    <a href=3D"http://groups.google.com/group/outreachy-kernel/t/fe8e5e07b1=
88c9a6?utm_source=3Ddigest&amp;utm_medium=3Demail" style=3D"font-size:21px;=
color:#1155cc;text-decoration:none" target=3D"_blank">
      [PATCH] Staging: most: hdm-i2c: Drop owner assignment from i2c driver
    </a>
 =20
  </div>

  <table style=3D"border-collapse:collapse;width:100%">
   =20
    <tbody><tr><td style=3D"background-color:#ffffff;color:#2e2e2e;font-fam=
ily:arial;padding:10px 15px;border:1px solid #d3d3d3">
      <span style=3D"color:#b1b0b0;font-size:15px">
        Shraddha Barke &lt;<a href=3D"mailto:shraddha.6596@gmail.com" targe=
t=3D"_blank">shraddha.6596@gmail.com</a>&gt;: Oct 12 06:44PM +0530
      </span>
      <br><br>
      i2c_driver does not need to set an owner because core will set it<br>
=C2=A0<br>
Signed-off-by: Shraddha Barke &lt;<a href=3D"mailto:shraddha.6596@gmail.com=
" target=3D"_blank">shraddha.6596@gmail.com</a>&gt;<br>
---<br>
 drivers/staging/most/hdm-i2c/hdm_i2c.c | 1 -<br>
 1 file changed, 1
     =20
        <span style=3D"font-size:11px"><a style=3D"color:#1155cc;text-decor=
ation:none" href=3D"http://groups.google.com/group/outreachy-kernel/msg/b04=
cbd40fe33e?utm_source=3Ddigest&amp;utm_medium=3Demail" target=3D"_blank">..=
.more</a></span>
        <br>
     =20
    </td></tr>
   =20
  </tbody></table>
  <div style=3D"font-size:11px;margin-bottom:40px;margin-top:5px">
    <a style=3D"color:#1155cc;text-decoration:none" href=3D"#1506129b966843=
9c_digest_top">Back to top</a>
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

--001a114f00facf845c0522260198--

