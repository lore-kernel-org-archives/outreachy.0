X-GM-THRID: 6332661608531099648
X-Received: by 10.107.183.215 with SMTP id h206mr13539736iof.6.1474476560800;
        Wed, 21 Sep 2016 09:49:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.7 with SMTP id 7ls4794479otw.9.gmail; Wed, 21 Sep 2016
 09:49:20 -0700 (PDT)
X-Received: by 10.13.206.6 with SMTP id q6mr7707752ywd.163.1474476560434;
        Wed, 21 Sep 2016 09:49:20 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-yw0-x22a.google.com (mail-yw0-x22a.google.com. [2607:f8b0:4002:c05::22a])
        by gmr-mx.google.com with ESMTPS id u139si1895697ywe.5.2016.09.21.09.49.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 21 Sep 2016 09:49:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:4002:c05::22a as permitted sender) client-ip=2607:f8b0:4002:c05::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:4002:c05::22a as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x22a.google.com with SMTP id i129so63420999ywb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 21 Sep 2016 09:49:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=QoJrsVPN0AHnLURolfytEKQPxJyAdzTPC5p+sJ5sDCw=;
        b=DGktMTI5GFSyYP/eMlK4RttSMxrn49eqaM0LDRLsnwiKh0Qx4vaxrSVkPqSPUgnoY6
         N7bV5r0yZWmSdlQfXUvZ6/7q+FZpYmxHCuVf7Ks2dnvS6RuWW/oGKsHLu8U/UWUhE9Qn
         L6VLzd5EKO/9WoW7UFLENJI+w5a0de949NWAizmkwXH974v1gH2/RVH8zNCIDubmGRsL
         8CNavQcbiuzbOIfT8eawbu0gco6UcsqqrmTeZwS2lxCQKQxnez+VNpI5SeX02MLB8s57
         TBhqg2elrVgB54tMS1Iyu0Rk6omX6JvbG9TllpCNPr64vAxn8k77GE59Cj9aI1cxrls6
         6Frw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=QoJrsVPN0AHnLURolfytEKQPxJyAdzTPC5p+sJ5sDCw=;
        b=lo9CjJQ4MHwDrpNL2Ln7XQk3BUquV4mJBj3AD7/pnbD5O2pfe6I0oP5kGU9s6XCx+M
         w50DWbs8r5tHCJm0EjcT3pn9KqLaU2imekIc/CUtd8Fzjyi1krkvjibM0jve8xC1oP2j
         nV8SV/a/dxT9roo6xSGJsPHTqu/SfCw8MiLU3K1VlmtXuhs1FtRaqEiN5xvwerOwHSxE
         Hx9KoUuss76DFFY3QLYhCSZAE+yrf36XQTDSJNNID506tUMegZq4J91hiYw5DlWSYHXg
         yZQblirOxu0lHvD+0j6xJQW+w11iR6cOjdRTyCmU0PiYW3DoCBO/WefE6QngvBY87fYm
         I7HQ==
X-Gm-Message-State: AE9vXwPc8NOc3cxEV2Q9z4lTMu9vJ+P5bkh2q/mbam53248/lfKzhumgba7MzFXo3Y/W60LvRrwUcMqKfAnx1A==
X-Received: by 10.129.84.213 with SMTP id i204mr35046086ywb.218.1474476560232;
 Wed, 21 Sep 2016 09:49:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.103.87.137 with HTTP; Wed, 21 Sep 2016 09:48:39 -0700 (PDT)
In-Reply-To: <20160921162649.GA2358@d830.WORKGROUP>
References: <0eb31ed4-5370-4980-be9d-559b20044bf5@googlegroups.com> <20160921162649.GA2358@d830.WORKGROUP>
From: Shivani Bhardwaj <shivanib134@gmail.com>
Date: Wed, 21 Sep 2016 22:18:39 +0530
Message-ID: <CAKHNQQF3MsCTkicKWN3MvWBtdneHb0_dkPs4v0apW5yRZ8D3Gg@mail.gmail.com>
Subject: Re: [Outreachy kernel] Mutt/Gmail Issue
To: Alison Schofield <amsfield22@gmail.com>
Cc: gnudevliz@gmail.com, outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Sep 21, 2016 at 9:56 PM, Alison Schofield <amsfield22@gmail.com> wrote:
> Hi Liz,
> Similar to Namrata, I don't know answer to specific question, but
> I can share my .muttrc and .esmtprc that got it working for me.
>
> And then there were some things I did over in my gmail account settings
> probably related to selecting IMAP.
>
> amsfield22@d830:~$ cat .muttrc
> set sendmail="/usr/bin/esmtp"
> set envelope_from=yes
> set from="Alison Schofield <amsfield22@gmail.com>"
> set use_from=yes
> set edit_headers=yes
> set spoolfile="imaps://amsfield22:mypasswd@imap.gmail.com/"
> set folder="imaps://imap.gmail.com/"
> set record="=Sent"
> set postponed="=Drafts"
>
> amsfield22@d830:~$ cat .esmtprc
> identity "amsfield22@gmail.com"
> hostname smtp.gmail.com:587
> username "amsfield22@gmail.com"
> password "mypasswd"
> starttls required
>
>
Hello,

Just in case you don't know the exact settings to be done in your
gmail, you can check my blog post here:
https://unixia.wordpress.com/2016/05/01/setting-up-mutt/

Shivani
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160921162649.GA2358%40d830.WORKGROUP.
> For more options, visit https://groups.google.com/d/optout.

