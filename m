X-GM-THRID: 6664125238569074688
X-Received: by 2002:a1c:c00d:: with SMTP id q13mr933174wmf.5.1551629673325;
        Sun, 03 Mar 2019 08:14:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:48c:: with SMTP id 134ls1171835wme.5.gmail; Sun, 03 Mar
 2019 08:14:32 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZdlGScaaekJYqaE+Cs489iBZ0jAo0C+/2a7zNukOOkzJhVtGxt2rGuyU272MRE6GuPp3a7
X-Received: by 2002:a1c:cb8d:: with SMTP id b135mr927454wmg.22.1551629672544;
        Sun, 03 Mar 2019 08:14:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551629672; cv=none;
        d=google.com; s=arc-20160816;
        b=atF+UvlOFcMUmL4X21wVuf86rDdrt796tG510bqRMFAPxIxlj33UFlRZLn56WEqxZo
         TjZ6RjNir2KB1M5Ne65UhUSWCBeU4NeO7QfZOcBd2n+Bmayql9dq+w4Q8LF680xL3bBo
         NQNToxELRR2g5Vb1NeYILvhPbA3g7zYrz0NJZ8lN5nIKo9W0pvuVJBXbRz7jByRfQ9E6
         WnIKNNLOEbi6oIa3gmkU7NDG+Hmq45lnCvy1zSTUpvzS+48iMiqc5BDMFLMDRPP1RMam
         Pm3SrPWlH45bfjFwnijIdN8vPahiHMZQ9NrILiEifDqs/FnhH9n3sX+OYgMwZDfIUbef
         JK8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=WODsOsSgWtCdqmv7KbqW/1P2uqPZcUZZyTLF5E18y4I=;
        b=XUIh5M7a0JCqOfGkX+hP6lfunCBkxoufHcLdZIJvsJ3rgKB8umMsQO66X5dfLeymG8
         z3j/SN/pTlzs7PapOlsczGyZtDkodgUzQvqZTiPGS9Eiv6iAY+9wYoa7rytaOwemZnaK
         RcCHTDY9R6lXbdHzT15yrgUPGTRLrGZDVByaMveSpkxtpDdbeuIaAAgTiCM1rYUk5bRv
         AFuzTw8OvwWqUMFlml9An/ekETWcNCOB5HugLBqSsSNlIAdO/BWF148hNA/qN+zLYH5q
         SWQx+cW/RPvQqxgXLN11xyDwxcGEijko7DMcM4u0JxpHzohv7TC/s927MvS6q3NPZZjQ
         yhgw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o184si107780wma.0.2019.03.03.08.14.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 08:14:32 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,436,1544482800"; 
   d="scan'208";a="371684463"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2019 17:14:32 +0100
Date: Sun, 3 Mar 2019 17:14:32 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: idebleenasen@gmail.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: wlan-ng: Fix alignment match
 issue
In-Reply-To: <0baf5675-eda3-4e64-95e4-694f82155da2@googlegroups.com>
Message-ID: <alpine.DEB.2.21.1903031713230.2543@hadrien>
References: <1551612545-54801-1-git-send-email-idebleenasen@gmail.com> <alpine.DEB.2.21.1903031230510.3207@hadrien> <0baf5675-eda3-4e64-95e4-694f82155da2@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1424128806-1551629672=:2543"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1424128806-1551629672=:2543
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 3 Mar 2019, idebleenasen@gmail.com wrote:

>
>
> On Sunday, March 3, 2019 at 5:01:38 PM UTC+5:30, Julia Lawall wrote:
>
>
>       On Sun, 3 Mar 2019, Debleena Sen wrote:
>
>       > Use tab to match alignment with open parenthesis to remove
>       > checkpatch.pl check:
>       > CHECK: Alignment should match open parenthesis
>       >
>       > Signed-off-by: Debleena Sen <ideble...@gmail.com>
>       > ---
>       >  drivers/staging/wlan-ng/prism2mgmt.c | 4 ++--
>       >  1 file changed, 2 insertions(+), 2 deletions(-)
>       >
>       > diff --git a/drivers/staging/wlan-ng/prism2mgmt.c
>       b/drivers/staging/wlan-ng/prism2mgmt.c
>       > index 7350fe5..7d2a140 100644
>       > --- a/drivers/staging/wlan-ng/prism2mgmt.c
>       > +++ b/drivers/staging/wlan-ng/prism2mgmt.c
>       > @@ -228,8 +228,8 @@ int prism2mgmt_scan(struct wlandevice
>       *wlandev, void *msgp)
>       >                  __le16 wordbuf[17];
>       >
>       >                  result = hfa384x_drvr_setconfig16(hw,
>       >
>       -                                        HFA384x_RID_CNFROAMINGMODE,
>       >-                                        HFA384x_ROAMMODE_HOSTSCAN_HOSTROAM
>       );
>       > +                                                
>        HFA384x_RID_CNFROAMINGMODE,
>       > +                                                
>        HFA384x_ROAMMODE_HOSTSCAN_HOSTROAM);
>
>       You are now over 80 characters for the third argument.  So it
>       would be
>       better to leave the code as is.
>
>       julia
>
>       >                  if (result) {
>       >                          netdev_err(wlandev->netdev,
>       >                                     "setconfig(ROAMINGMODE)
>       failed. result=%d\n",
>       > --
>       > 2.7.4
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/1551612545-54801-1-git-s
>       end-email-idebleenasen%40gmail.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
>
> Ok. But when I ran checkpatch.pl on the updated file the warning of more
> than 80 characters didn't show up. So I thought to commit the changes. 

OK, perhaps check patch doesn't give the warning in some cases.  But I
think that the less indented arguments are not so bad, and not exceeding
80 characters is better as long as the code remains readable in other
ways.

julia

>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/0baf5675-eda3-4e64-95e4-
> 694f82155da2%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1424128806-1551629672=:2543--

