X-GM-THRID: 6615609378154217472
X-Received: by 2002:a37:94c3:: with SMTP id w186-v6mr14528066qkd.55.1540891515993;
        Tue, 30 Oct 2018 02:25:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:40e:: with SMTP id 14ls3336609qke.5.gmail; Tue, 30 Oct
 2018 02:25:15 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fyXE3VdmEzDkl4GBYKA36IoP+9GgvQOeTovli9tUdBu2yGR+7PkgSBkL5R9Xzln34tC8hB
X-Received: by 2002:a37:2b0d:: with SMTP id r13mr14435221qkh.38.1540891515369;
        Tue, 30 Oct 2018 02:25:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540891515; cv=none;
        d=google.com; s=arc-20160816;
        b=aRHC+KIXrry8IoJ2+c3Gj87BTvp5I8jp6coq7137IiPgpbgQkoXAI4tVaQrIXBz6M6
         NVX+3er8B/xI1YFu5JuRT6lv5SiuSiyalZm6w2TumGxI9orc0VNtKs+sLtVXkteO7cNO
         4v9+GV4xHUhXI+wdfxq/i1vHFZLK76jRZ9Vs+55wX+rYQ0x154N8HBCe460Igi/sbN0k
         Ldv3AON8CEmjqosYVDzzcBm2U4B7wgl0UawM/0D7sXH39BgxBoEgiZjkOFjFywJ8bTRf
         mp9HwmLo7CRdD95Jyx9IxmBV1gIRTJxiRAPPn0o+3PjzqdpqhU5yxUU1IGYohPQp/RpQ
         ovGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=pIhUhQdGIRl3IHa99g7amd9yv3rms7tGFmKOZvGsPKs=;
        b=ZKnvZs10R2MZvSrMqsjj18GtppW1dw4A6/Hiqp5Q02f7lcbXGvhNAKho5Lwt7Jzt1l
         MXvqUeQ9jkQHs4HDIW5Dz/UbIZYHFhXTGz49g0MRz4aX2YIBI1nANvFZ5z9aGHsrl3G/
         cExXZ2xdqKDByecYaviv+AJ+1+FPuQQgR8F8SjcqlPkQGVvA1lZQCbb4KozipfBOQuLE
         3oOuaQ/KznMEWmRvcefT2NvriresGPct8h2iIVngb/zXSiiUfK8Q90BxcwxSVlnHIepV
         U/lxHCnlik8FWTlwnvMbsQpApA143HL3k8Z2a8bG96z2FJBVThFi7Fai4iWIEsAkDrwa
         4zwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="2AbgZ3B/";
       spf=pass (google.com: domain of srs0=30/j=nk=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=30/j=NK=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=30/j=NK=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 21si409721qkr.2.2018.10.30.02.25.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Oct 2018 02:25:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=30/j=nk=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="2AbgZ3B/";
       spf=pass (google.com: domain of srs0=30/j=nk=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=30/j=NK=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (ip-213-127-77-176.ip.prioritytelecom.net [213.127.77.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id A618520827;
	Tue, 30 Oct 2018 09:25:13 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1540891514;
	bh=4Li3Bvw49W5x7fFW89JG9jIvbWBQxUvHt3E8gENJMM0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=2AbgZ3B//YqykpvQ96bCnPAYnGD2lWRJ9pS+Cc2C89pZE8coRy4aPks258NbBzMqk
	 hyd6Urza1Trz4DOo4iD+TVYv6z4+5XBAgEpvOjJmM+O+GdoO3df6G9d0hyYZCsjuNU
	 DtITuLBcqEjN+1TAxdKcHdFomw3535qSbMA+xydg=
Date: Tue, 30 Oct 2018 10:25:39 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
Cc: Hans de Goede <hdegoede@redhat.com>,
	Michael Thayer <michael.thayer@oracle.com>,
	devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] staging: vboxvideo: Remove unnecessary parentheses
Message-ID: <20181030092539.GA10009@kroah.com>
References: <20181023174304.iq4ra7vafwujr3ex@smtp.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181023174304.iq4ra7vafwujr3ex@smtp.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Tue, Oct 23, 2018 at 02:43:04PM -0300, Shayenne da Luz Moura wrote:
> Remove unneeded parentheses around the arguments of ||. This reduces
> clutter and code behave in the same way.
> Change suggested by checkpatch.pl.
> 
> vbox_main.c:119: CHECK: Unnecessary parentheses around 'rects[i].x2 <
> crtc->x'
> 
> Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>
> Reviewed-by: Hans de Goede <hdegoede@redhat.com>
> ---
> Changes in v2:
>   - Make the commit message more clearer.

This patch does not apply to the latest kernel tree at all :(

Please fix up and resend.

thanks,

greg k-h

