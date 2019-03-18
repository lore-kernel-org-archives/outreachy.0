X-GM-THRID: 6669456947091079168
X-Received: by 2002:a65:6147:: with SMTP id o7mr6055048pgv.23.1552888010721;
        Sun, 17 Mar 2019 22:46:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:7b89:: with SMTP id w9ls347404pll.5.gmail; Sun, 17
 Mar 2019 22:46:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqy7+mGzZM0P1kIuuQzp50qUWnV7WbZ1ZqsCvIDCeySUO0BaLehEnbnTG5KOqO9TCo+KdQsK
X-Received: by 2002:a17:902:4ac2:: with SMTP id q2mr5047268plh.112.1552888010029;
        Sun, 17 Mar 2019 22:46:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552888010; cv=none;
        d=google.com; s=arc-20160816;
        b=at53rtx/BT4ZMw77kavEAfLCVUy7ZrJ4xScRj1WJ5gDX4DlRyyRE7tfHVuSDP6B5sH
         +y2mUEN9A87r2DVieSe3hfJp7TJ6jF0/vbGEVivB8VSM196ZnstBLN9uDssuU+x7W7uf
         8d8FXvezPn8f1IChsPcpmv306veu//JLfk1S7rI3il+cGiIQnZv5hzE3d8VEadgOTtFT
         dpkVfwvf2g4t3i1KQXU8U4Aj3UfM0n0DPGssKP2Q3c/AbhjYFUZ+dAlqsy2KtHUPG7U7
         YlS4VjH10DFjFGwe/Hw+o2Y6rX9Tobw9ZTCFzV9VoQ8/4iG58saU/xIho94xc4HsfGTI
         Wbbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=L3sL/k23Arur9876KghuSLWU0mMyJdBbDWdQ3WroZZQ=;
        b=DUaswtG3LK4KQNYMrmaEvq3DwFPI9eL5XDe2NjLt3+6tVY7bkfBq5x18St98benwQt
         TRKDPpnPH0PEdmvliwpiDGevO9Mi7SFeRbm+NulKXqxeUOqQJS4jE5eaqe0YP8NmLHh5
         ApahRTvNCteMphYmJH2H6Hm3UIcxXp4d9TOTCou5Bz22mWmjLt8bUTNs4wJ2qToAgTr6
         OnPdoUbCbPIMfABc/S+SFGdY7sdMqDSQZfqlkb7h62yDrwEsqlu7hkfCn75SFsf630eM
         y+0MQSweceNSvxihbbKD/yYuTeG8hLzb6PS7xyCsXGQCJtdKxT6P3WeUb6GygHpR9uVI
         PhVQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SbwSCbZJ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r133si523911pgr.4.2019.03.17.22.46.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 22:46:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=SbwSCbZJ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 439F320857;
	Mon, 18 Mar 2019 05:46:49 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552888009;
	bh=SyFZDrVyMeBcaA20Y47pcSkThxjlRXHw3clj5227UOg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=SbwSCbZJqW8j8f1gnUK+IsdVFRW1QIrDrjSx8l9ZiOA8lVV19yk8Ni6tZFOSiBnka
	 iP2TDF6/wyiCn8dtPnNidlF57/FFBWWQqQeg6gRCqCpKDTIXZPoomx39OXau09pGaD
	 v0CPjIgflrePZR3Z5Cjgv0kNagdJHOCcEuk8BfvA=
Date: Mon, 18 Mar 2019 06:46:47 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatsala Narang <vatsalanarang@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Edit CamelCase function names to make
 code more readable
Message-ID: <20190318054647.GA4462@kroah.com>
References: <434bf516-9e31-4dcf-ab81-32842a588aee@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <434bf516-9e31-4dcf-ab81-32842a588aee@googlegroups.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sun, Mar 17, 2019 at 01:19:13PM -0700, Vatsala Narang wrote:
> 
> [PATCH] Edit CamelCase function names to make code more readable
> Issue reported by checkpatch.pl tool
> 
> Signed-off-by:vatsalanarang<vatsalanarang@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk75
> 0_display.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)

Along with what Julia said, you can't send patches in html format or
they will be rejected by the developer mailing lists, as well as not
being able to be applied at all.

thanks,

greg k-h

