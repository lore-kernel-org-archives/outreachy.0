X-GM-THRID: 6948690474275176448
X-Received: by 2002:aca:ab49:: with SMTP id u70mr34295oie.115.1617869180801;
        Thu, 08 Apr 2021 01:06:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6808:1146:: with SMTP id u6ls1038299oiu.9.gmail; Thu, 08
 Apr 2021 01:06:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy66IjyLpwpyP07DfDtQGaw/j3vZWo6EiFw4AbacMXZ6cK6ZbnHT/7UlK2g+snYoRhXgEBU
X-Received: by 2002:aca:c687:: with SMTP id w129mr5153407oif.99.1617869180073;
        Thu, 08 Apr 2021 01:06:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617869180; cv=none;
        d=google.com; s=arc-20160816;
        b=s/AKyGZabUCpmUUWEqcGypbqSYOzinnNQuveMFmGWxPNvaYyM68AEQlesgKuhCWiR5
         mOGPOClxOIDh/Ez2KNe9JdZCYaQiC7Tm0pT9TuuPmGDDMMk7/vittDBJ4+XQ8ip6p0pT
         wvmpGVJFvXrGVkr4jDsZY5Dfck1kYtshN09DMyBscFpoheyUjdzZEJORtQ6Pg0lcshje
         8eEAji+78halMWgGCKwVV9cUKzlwl8lBNprXjspNjbOhkArWCPN673z1Jyl1k3uBZjq+
         tDaX7qvmTdyeNNAvaVuOT2mTGzltZsj4FFwodV2ho/LSL8zkbysJjowgnfpxRYatQtEE
         OmWg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=UDkoW8OJZk8icXQm8DWRtWV7MCZRS9b4+j4mZOkLiF0=;
        b=va5Avp5YXLYk5XEF8sjE2UPcWW6x9/GzNByExJhee6OQmLai0Qw50OrFephE8K6t9e
         0iVsWAg+l8CxE2RGxjunln5AI6Qil1hQ0GhwTE81OdzkRFCqUru9OUZz2SqxUlp+DAgk
         PN/rf7OmueF+nKLrZEH0MNPcCtbd1z5wM5SnALd4uxbV/4x1ZBsnE3n0+fTv/0LW0uju
         AgMNBIRSeDmqPRBE4nC2qfPHAzOUNSFCFpYJuxfIjWKXVlJwY49Z/W9q8mCcS+5jJmQz
         YBnRcl0tQiQcHURrxqLSYyZQaRC1PE+FoF9xAImU2jlINJdlN5Bj+rN7frB4hES0rgyi
         PdlA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="uywH9G/N";
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::934 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-ua1-x934.google.com (mail-ua1-x934.google.com. [2607:f8b0:4864:20::934])
        by gmr-mx.google.com with ESMTPS id v31si1669150ott.5.2021.04.08.01.06.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Apr 2021 01:06:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::934 as permitted sender) client-ip=2607:f8b0:4864:20::934;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="uywH9G/N";
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::934 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ua1-x934.google.com with SMTP id m16so439068uaq.4
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Apr 2021 01:06:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UDkoW8OJZk8icXQm8DWRtWV7MCZRS9b4+j4mZOkLiF0=;
        b=uywH9G/Np8h+lgjsaxuASotlmzdbYS/RYFJQvXdD2YyFzXESVXGFwpGqLQdVBeCIWU
         fRN7VXenj0k2/7Z1PpHJXopuN+uotNLkLEeqZP7fwc27ra2BYc9VGJT2/YZ9EL++46iA
         9j/Yo1NDbz4l3Sx6ASNtk0ks7YdRU+0quAakrVRBP84sa5Pe5XHUciBaBhTxfrpnJ5SV
         lVv12C8i+MzFYL2qYEmVPOqMbosVfb31atl1+KnHDpLT6/fAtFwdfI0S+L5K94L3r4V9
         hqZilA4voRT5MvQ7neVFolqQx2xUHB382SJcpOkB+m7u1BdZGMYgA1i9mDDSoBN7SYvr
         vEew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UDkoW8OJZk8icXQm8DWRtWV7MCZRS9b4+j4mZOkLiF0=;
        b=CMh9hBf6TnLOGNNmnfYnKvU7l5WhLz7hz/yVFT1sBgW5y+NycnZVAcjk+sOs9T3357
         UM87wwfGdrbJ9mFzoCsvMR6tVYhLtwC3ACpifiQmiaqWopLZYkGkFkjm1F7CxvQ7k8kM
         q8FM/YB6RVOSGSq97iLOjy7KkQfFDE3R4xi8F9dAqcnriLf6IWKyE208oj5HADo1unXw
         OqlyEhLV9XCsLdQ7K/DGFMuBJQyKftwgvfISvDTgq54tuS6LAr9ogHOdhyFFfwr1P1mc
         VX13/c/mOv0Wf7D7fQaS3XKssHzIjohzxoO4T4513dtr4WrmLHtfDnNjKqwBkKRM/N+4
         m5FQ==
X-Gm-Message-State: AOAM531dMbWY/4U3r8CgZ1tVYi58Adcd5s0G0vQl+zfONBND/R58kEV7
	+DqcwB1WRJ1MGXlt7MPpUiO8gMcJVuzAygSz3W4=
X-Received: by 2002:ab0:2443:: with SMTP id g3mr4601454uan.51.1617869179548;
 Thu, 08 Apr 2021 01:06:19 -0700 (PDT)
MIME-Version: 1.0
References: <YG61JYTdl1HQKcGj@kali> <YG64Kvun5Xxy4lOL@kroah.com>
In-Reply-To: <YG64Kvun5Xxy4lOL@kroah.com>
From: Mitali Borkar <mitaliborkar810@gmail.com>
Date: Thu, 8 Apr 2021 13:36:07 +0530
Message-ID: <CAHWmKdgm0bjRBasEjcWdtDPX1DPON6RSmNXMTp+NQfYrYHmcXg@mail.gmail.com>
Subject: Re: [PATCH] staging: rtl8712: removed unnecessary blank line
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com, 
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Content-Type: multipart/alternative; boundary="000000000000bd76e605bf7185cb"

--000000000000bd76e605bf7185cb
Content-Type: text/plain; charset="UTF-8"

Okay, should I rename the patch? I removed a line and matched alignment, so
should I rename this appropriately?

On Thu, 8 Apr, 2021, 13:30 Greg KH, <gregkh@linuxfoundation.org> wrote:

> On Thu, Apr 08, 2021 at 01:17:49PM +0530, Mitali Borkar wrote:
> > Cleanup patch for CHECK: blank lines aren't necessary after an open
> > brace '{'
> > Reported by checkpatch
>
> But you did more than just the above in this patch, which is not ok :(
>

--000000000000bd76e605bf7185cb
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Okay, should I rename the patch? I removed a line and mat=
ched alignment, so should I rename this appropriately?</div><br><div class=
=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Thu, 8 Apr, 2021,=
 13:30 Greg KH, &lt;<a href=3D"mailto:gregkh@linuxfoundation.org">gregkh@li=
nuxfoundation.org</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote"=
 style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">On=
 Thu, Apr 08, 2021 at 01:17:49PM +0530, Mitali Borkar wrote:<br>
&gt; Cleanup patch for CHECK: blank lines aren&#39;t necessary after an ope=
n<br>
&gt; brace &#39;{&#39;<br>
&gt; Reported by checkpatch<br>
<br>
But you did more than just the above in this patch, which is not ok :(<br>
</blockquote></div>

--000000000000bd76e605bf7185cb--

