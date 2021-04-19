X-GM-THRID: 6952926381632126976
X-Received: by 2002:a5d:62cd:: with SMTP id o13mr16221516wrv.77.1618858706632;
        Mon, 19 Apr 2021 11:58:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6804:: with SMTP id w4ls8999909wru.2.gmail; Mon, 19 Apr
 2021 11:58:25 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy5RKcKyUaff+POA23ZYvk1nSdoHDagTsVIwL4ScESg86CEtdrcw3OY4u6ASPNM/AMmIJRg
X-Received: by 2002:adf:f150:: with SMTP id y16mr15844863wro.186.1618858705196;
        Mon, 19 Apr 2021 11:58:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618858705; cv=none;
        d=google.com; s=arc-20160816;
        b=yD0BG9eAgWWVfblx8Ge26Sg0cxm9dT/ZmG7Q2fc4cTTQKimyx46DuNuOxQ3ixmUaH5
         Sy/9iUXVqyL8NdgvpiZCwQ3r5sM7V3qQ0bXuRz/mXVg35oTc9KUcIvbdkmv9EMtbLwpb
         kN/kHl0RCWhmeD2sJxBDWl1wRaCt3PpPMbi/2ATAgvrR6OHiWCnBGp0rrjmHifeotyKV
         Hqbe3xjTFYPfkWEFkL0s+EZnZqzbJPJKwGFSmGiaPfVkRMSkVVlZDHdbjhTs1mKk4c30
         Meh4ySkTwa0ZNWR50vSMCOKXfoHoQh4DM/+K5KiRIQGtaDi0wXnwxmO4Bx5194TEjGXz
         uf6g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=5H3ZsKCIXAITQHPg/KDk8b5eFk9xq/mnrrEI5J+QUoY=;
        b=nbn8OjeYuiA5HgUIU3UwfpXe+LY2Oun+ehBLwC05ZkG0PkfoQV36YkP46O0+8HwJj+
         9LURwOvqH7IS9TdPrz2PkWQGtQtZc4tumURIy0jUMe8LhgkFAfTFoH3qKItQm+sdOHZB
         XZzeNNNHws+OwUHsQBTM1ywXCcBavSrRZ5xjXMQ+gLbSSEPrAC68yvqhnVhTAekx9/w0
         KG7UdmY5EnoMGUWUCDkNYmoX99J/gcQWaVjs1pEDfZGRy2MOR/XuxRZDLuNqdstYgol2
         xd4vjWkr76sDN90IElCFMjiIAGcY4JB3xZYIy5KplSVyvs+1xIiyp59tvI1oMYpnzUQ0
         vuKw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id k6si1263445wrm.2.2021.04.19.11.58.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Apr 2021 11:58:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AbyvZfKyM/7PeItiPArQNKrPwzb1zdoIgy1kn?=
 =?us-ascii?q?xilNYDZSddGVkN3roeQD2XbP+VIscVwphNzoAsK9aFzG85od2+MsFJekGDLroW?=
 =?us-ascii?q?65aLxlhLGC/xTFOwnTstFQzr1hda8WMqyUMXFfgdzh6Ae1V/YMqePmzImSie3T?=
 =?us-ascii?q?z2hgQGhRAsldxjx0BQqBHkp9SBMuP+tbKLOn+sFFqzC8EE54Uu2HABA+M9Trm8?=
 =?us-ascii?q?fGj9bPbxIAGnccmWuzpALt2frBHx+U0gx2aV5y6L0pmFKrrzDE?=
X-IronPort-AV: E=Sophos;i="5.82,234,1613430000"; 
   d="scan'208";a="504000509"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Apr 2021 20:58:24 +0200
Date: Mon, 19 Apr 2021 20:58:24 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Coccinelle: understanding its output
In-Reply-To: <3557115.gcaS8tdjop@linux.local>
Message-ID: <alpine.DEB.2.22.394.2104192054440.23529@hadrien>
References: <3557115.gcaS8tdjop@linux.local>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 19 Apr 2021, Fabio M. De Francesco wrote:

> I think that I don't yet understand Coccinelle's output.
>
> I've just run the following command:
> spatch --sp-file scripts/coccinelle/free/kfree.cocci --dir drivers/staging/
> wlan-ng/prism2fw.c
>
> It outputs something that looks like a patch:
>
> HANDLING: drivers/staging/wlan-ng/prism2fw.c
>      (ONCE) already tagged but only removed, so safe
> diff =
> --- drivers/staging/wlan-ng/prism2fw.c
> +++ /tmp/cocci-output-17844-0c6c7c-prism2fw.c
>
> First, what is /tmp/cocci-output-17844-0c6c7c-prism2fwc? It is not a file in /
> tmp. If it is a file, where is it?
>
> The output goes on with lines like the following ones:
>
>   @@ -1008,8 +1005,6 @@ static int writeimage(struct wlandevice
>         rstmsg = kzalloc(sizeof(*rstmsg), GFP_KERNEL);
>         rwrmsg = kzalloc(sizeof(*rwrmsg), GFP_KERNEL);
>         if (!rstmsg || !rwrmsg) {
> -               kfree(rstmsg);
> -               kfree(rwrmsg);
>                 netdev_err(wlandev->netdev,
>                            "%s: no memory for firmware download, aborting
> download\n",
>                            __func__);
>
> Please read the two lines with a trailing '-'... Does Coccinelle mean that
> they should be removed? If yes, I'm not able to understand why, because I
> think they must not be removed. Am I wrong?

Sorry.  I think that the *s are a left over from a version of the semantic
patch that was trying to do more.  The semantic patches in the Linux
kernel are meant to be used with make coccicheck, which would have avoided
this problem.  The key is the lines

virtual org
virtual report

near the top of the file.  This means that the semantic patch should only
be run with either the option -D org (producing emacs org mode) or the
option -D report (producing text).  Both of these modes suppress the -
that you are seeing.

The - comes from the uses of * in the semantic patch, that is used to
highlight lines of interest, where the highlighting is done by putting a -
at the beginning of the line.  It's not meant as a suggestion to remove
the line, just that you might want to look at it.  But in this case, as
you noted, there is nothing interesting to see.  I will remove the *s.

julia

