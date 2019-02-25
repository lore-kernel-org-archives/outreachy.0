X-GM-THRID: 6661092310784147456
X-Received: by 2002:a37:ef19:: with SMTP id j25mr10638429qkk.5.1551131255084;
        Mon, 25 Feb 2019 13:47:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:8302:: with SMTP id f2ls6564445qkd.0.gmail; Mon, 25 Feb
 2019 13:47:34 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZRncT5gY67qEGpXPNHz2wXbyJASsXqqePn6uB6ak/zIeCBojC896X+9nueyE+en539YYiO
X-Received: by 2002:a37:4fd7:: with SMTP id d206mr6775263qkb.57.1551131254570;
        Mon, 25 Feb 2019 13:47:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551131254; cv=none;
        d=google.com; s=arc-20160816;
        b=WwEWJyEnE3aMzBpPST9FdBOl45eS7zeYAO+F1rHtM/rxV+Y0aGSwTkWxP9cmM4tpfL
         G4pLPkrjQoFiLZ5UaGH7MJRlNBN591vHKcjJ4FCT/vUg4vDi+yCHP82zWqgm+oKtpCLj
         8BT4D/nqNdQthP6pHx+3ptEpxz7qt4mbc3vDUQTkZM0EHHD3eKxl+TSjRi5JvRzZxfs/
         e6d7SxKB2LCe2LqixRmON4EdC5NVI8U6h5ihMqhqn/nXAqmckg4JxFQnlAh1+LgwiOVb
         Am/DABC0AOUzDEnLRLgeTIFsa6n6ZaqKOVPvAhgj7WRLK1fW+jsxXw10e7HFpwOvQQyG
         v5kg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=zoHz4vl5hN2vAwlNgdY40tkKJLYcnznhRh8Y9X9RhdA=;
        b=s/dMHGiHEIKQj1cO0iyjVJhZ9rn86oc6Fsvg3j7+SFLqJeFK26q2+S+oTA+PAfRMvO
         kugynT+vFQErCo/j+PcexWob/7IKBH/Hvb9bTAfaR/MixOMYIeL+hCxaV3+pQFxgU1o7
         AVxCyZx3dzLsFDBhjhKueB2TRa3iUjEXAO+QwHO6DnCNDZKNlif/fvYD9ElwJWSegpK9
         Tz3gdTkFICXxYj627l1nZuF3ApiHiETQ1Gx5LJ/cqCOdhx7egHMElIN2SBLGfOKDnwAP
         k/QhhG8pDT3L5MMVutMxJPD4gXfrXT3JkEsppD1ILJiDpHaUYlhjyt6Fo/O0k6iRlEWq
         lhwQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GFDAWOeD;
       spf=pass (google.com: domain of srs0=mf0b=ra=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=mF0B=RA=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=mF0B=RA=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e12si389710qtg.5.2019.02.25.13.47.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 13:47:34 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=mf0b=ra=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GFDAWOeD;
       spf=pass (google.com: domain of srs0=mf0b=ra=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=mF0B=RA=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0A40F2147C;
	Mon, 25 Feb 2019 21:47:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551131253;
	bh=zoHz4vl5hN2vAwlNgdY40tkKJLYcnznhRh8Y9X9RhdA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GFDAWOeDzjPYyZ1v40z/TnNahV11XnUvTwIE8qpXsmHX00mzHgB55q/13j/qbPQx+
	 qsAPNTM7GYAzx1+rtOlxyGsnS6e2SFo4AR8Xcioc7etfOC5cYgqDNiEncZntXx0JMA
	 MVEUKMCg1KRtQcJavySEMCUxEbQRR3VYGQ+5YvOo=
Date: Mon, 25 Feb 2019 22:47:15 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3] Staging: ks7010: Match alignments with open
 paranthesis
Message-ID: <20190225214715.GA8237@kroah.com>
References: <20190225145807.9255-1-bhanusreemahesh@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190225145807.9255-1-bhanusreemahesh@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Mon, Feb 25, 2019 at 08:28:07PM +0530, Bhanusree Pola wrote:
> Adjust parameters of "netdev_dbg" to match alignment with
> open paranthesis.

Odd spelling of that last word here, and in the subject line :(


