X-GM-THRID: 6752359295964151808
X-Received: by 2002:a05:6214:13aa:: with SMTP id h10mr4418680qvz.142.1572160373818;
        Sun, 27 Oct 2019 00:12:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:6d3:: with SMTP id 202ls4918514qkg.6.gmail; Sun, 27 Oct
 2019 00:12:52 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxPLHn4wv0EQ1HmF9hvXNA17wVK86bvctSndsn7hR14YGWZSvPeOMSOxy9RYwlMrebIT8ht
X-Received: by 2002:a37:a792:: with SMTP id q140mr11025499qke.216.1572160372648;
        Sun, 27 Oct 2019 00:12:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572160372; cv=none;
        d=google.com; s=arc-20160816;
        b=D8WqOqXZ/91C1xtdoZXJebF5zEHzgUETLObMZDGMGhiKae+NHY8eywal4NfgTEky2K
         LNoNfN2XMRn1hmd185WQImEmKnuAp59DOkztsmDYJdhfgmMVTx+Gugv2y59uPh2kW92v
         n0X6j5vG9WOdgC6BOp1CrqxxmTgh1Bk5IsgIb/vXJCkKkRHRVX/bUxOW4/NjOY4R7pCD
         KFjYT11TUIybpZx18IKK6nz4YEdXOdHitZUFmjQKdKCEbFD8eYX+KH7LuRgrhO6Habep
         pcibNnzuvtsN9E3dua3QzjrIK9cvTcetezu/X0xeNDb7hpvyogoc3lSQw7zJ9uuqgR0x
         yKhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=usT/Cs89sCTc1Xr8GfALOuA4ucwUJ/NrS1y/RkcrP5c=;
        b=R9VvGhZN5+JPUnb2u40nlemrMofZGUo31ypjKFg0sOrMh/7lNOQJ+X18YG//aXandY
         eC7iPV8dt5HTkNxdZJvG4S0yLMz93LYKenNvXPKJgF12UvaFYRCgf6JUOLL49E0XG9sv
         x+atX52Gzrl2BYkReQcZv+GqA8M67xZ4QFZLvv2P/9A/BHIgz/6vGGRNNSJPWmnd76H5
         e5dTJuvr4ZAVZ0VWzynXD9ZLAeBCOd6mm2FXWt0f8Ewy5u6s4uVFpuWTzaDsWqudc+F6
         A5cSbDyMxBakGl6gpvbXuRjBYGnq2NASa6q00vo7jxwnjEtB6p7+7Wiauyz3VwmJPUY+
         WR5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=e88dTmS7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z41si322829qtj.1.2019.10.27.00.12.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 27 Oct 2019 00:12:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=e88dTmS7;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 12EA720679;
	Sun, 27 Oct 2019 07:12:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572160371;
	bh=XasSnSt5Kz00MONxTlwqsftdUfYkRrzDncRg9N0cEYc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=e88dTmS7Q2ATr3P8ZpGVh7O2sXo0ZtccPsL9/Vt74Y0v6i+WaPqqGbboapC6g2TdZ
	 mBKA5lRRrWV8kI+fIVzyzIx730BPk7MbsUWNNRbL6V0qi5X5/rrO9JzKEY6b5rbv9g
	 MjG8wJOoSYEYLAdshOk6yWaKZh3MwQvpz5QVQRc0=
Date: Sun, 27 Oct 2019 08:12:19 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
Cc: outreachy-kernel@googlegroups.com, saiprakash.ranjan@codeaurora.org,
	joel@joelfernandes.org
Subject: Re: [PATCH] staging: ks7010: Fix line ending with a '('
Message-ID: <20191027071219.GA1704509@kroah.com>
References: <20191027060237.GA26854@linux-kernel-dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191027060237.GA26854@linux-kernel-dev>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Sun, Oct 27, 2019 at 06:02:37AM +0000, Frank A. Cancio Bello wrote:
> checkpatch.pl message:
> "CHECK:OPEN_ENDED_LINE: Lines should not end with a '('"
> 
> Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
> ---
>  drivers/staging/ks7010/ks_hostif.c | 5 ++---
>  1 file changed, 2 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
> index 2666f9e30c15..ab731a2f7bb3 100644
> --- a/drivers/staging/ks7010/ks_hostif.c
> +++ b/drivers/staging/ks7010/ks_hostif.c
> @@ -75,9 +75,8 @@ static void ks_wlan_hw_wakeup_task(struct work_struct *work)
>  
>  	if (ps_status == PS_SNOOZE) {
>  		ks_wlan_hw_wakeup_request(priv);
> -		time_left = wait_for_completion_interruptible_timeout(
> -				&priv->psstatus.wakeup_wait,
> -				msecs_to_jiffies(20));
> +		time_left = wait_for_completion_interruptible_timeout(&priv->psstatus.wakeup_wait,
> +								      msecs_to_jiffies(20));

And now you have created a line over 80 characters, so you can send a
patch fixing that, and around you go :(

Just leave this as-is, it's fine now.

thanks,

greg k-h

