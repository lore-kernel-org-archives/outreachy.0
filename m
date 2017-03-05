X-GM-THRID: 6394051769917243392
X-Received: by 10.107.3.10 with SMTP id 10mr4698543iod.11.1488740312887;
        Sun, 05 Mar 2017 10:58:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.26.142 with SMTP id a136ls1456356ioa.12.gmail; Sun, 05 Mar
 2017 10:58:32 -0800 (PST)
X-Received: by 10.107.24.67 with SMTP id 64mr4594127ioy.52.1488740312071;
        Sun, 05 Mar 2017 10:58:32 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id a3si167183pfb.2.2017.03.05.10.58.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 05 Mar 2017 10:58:32 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 25so17650010pgy.3
        for <outreachy-kernel@googlegroups.com>; Sun, 05 Mar 2017 10:58:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Ay0MprwGo6zxh3JFyBdBzna2xjW40PlImmE3RRiqVJU=;
        b=Nhe8v5oNB9likbUxScNKjNwYRJH61+xfa7QSraXhbqti8BGlZmxiI/vkhGWf7rGOvB
         8lVtm09djWvpRL3dEdg2hTVZv/mSy909H+GpO8YxEpYbx0ulSvArDp55OVcSbpK4aixa
         hCMHAgBBM3UGfxBRnyFFTFcC7xbvaZXZosy+zXAYsw57sjUDgyLDvYoRtGlDlOOD2MFm
         f8IETCz6vmsplAl+5w8+K8MlZphNEIhcoKwpIOvlYtGkMyscCywObcWMe00GuthAB5VP
         G8gf5uHtgG96Ip9A+iSf9xXmH7Mpodf/15htN1PYi16c+Bppjxs+a/SPixKE/5eKnnlu
         nRnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Ay0MprwGo6zxh3JFyBdBzna2xjW40PlImmE3RRiqVJU=;
        b=KtAX/ysD3fPeHvYWIhPss5sUIPkZZsWl2XxUAor9LBe2LxKEODXPiWXjfXJcltosIJ
         sH3YyndX3iwiDmjn3xUENdmWJpAmJhTNUPT/bs4QTiEm6CzhXd0SV5vAxNHNBA/Fwio1
         U2jQ9Jd7n19+WpfyUbA4jg7ABDk2MR1Xx2cbvq3uET+lv1tJhWJd+DTZHN8br9R/3FdH
         dUqPiSrVeWGZHgKrcmOQY+Z+H3RjufJArJXJVZNqBgoKyRVVTJ0ygCtoVcFTaLHU+eiI
         X01ldB4UlHXsBzTQi/2IJA5FJ1VAWzZT3qnrXkgV/Bzl8hWEXtp5dzbu5B8tAUivuNCi
         /eLQ==
X-Gm-Message-State: AMke39lFxST4RcbfOZ5/JjiUDXj+fA1XZ3JOGttQB//Pg3fA4Q48pWI22VbcQqVwHpQVUA==
X-Received: by 10.84.254.1 with SMTP id b1mr20274160plm.76.1488740311836;
        Sun, 05 Mar 2017 10:58:31 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id i70sm34804986pfi.67.2017.03.05.10.58.31
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 05 Mar 2017 10:58:31 -0800 (PST)
Date: Sun, 5 Mar 2017 10:58:29 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
	knaack.h@gmx.de, pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com, linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 0/2] staging: iio: accel: Group
 similar macros into enums
Message-ID: <20170305185828.GA3380@d830.WORKGROUP>
References: <cover.1488730643.git.narcisaanamaria12@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488730643.git.narcisaanamaria12@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 05, 2017 at 06:26:03PM +0200, Narcisa Ana Maria Vasile wrote:
> Group related macros into enums, for clarity.

Hi Narcisa,

Is this enum then used in a type declaration?

BTW - I can see Jonathan is following right along and sweeping these up,
but for future reference, this patch depended on a previous patch sent hours
earlier, that was not yet in staging-testing.  When this happens, one option
is to give a note below the --- (as you would for version comments) stating the
dependency.  This way someone reviewing the patch doesn't simply reject
it as not applying to my tree.

alisons

> Narcisa Ana Maria Vasile (2):
>   staging: iio: adis16209: Group similar macros into enums
>   staging: iio: adis16240: Group similar macros into enums
> 
>  drivers/staging/iio/accel/adis16209.c | 18 ++++++++++--------
>  drivers/staging/iio/accel/adis16240.c | 14 ++++++++------
>  2 files changed, 18 insertions(+), 14 deletions(-)
> 
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1488730643.git.narcisaanamaria12%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

