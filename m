X-GM-THRID: 6664600142546468864
X-Received: by 2002:a67:edc2:: with SMTP id e2mr548294vsp.35.1551772183407;
        Mon, 04 Mar 2019 23:49:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:7201:: with SMTP id u1ls4168289uao.3.gmail; Mon, 04 Mar
 2019 23:49:42 -0800 (PST)
X-Google-Smtp-Source: APXvYqx60hBD16TBHmgLWn0tzwT7Frfkkm/qjuDaGobkBrbdh17RPbAHNmFSL3mxsoJu4nUVOf/l
X-Received: by 2002:ab0:664d:: with SMTP id b13mr615405uaq.8.1551772182884;
        Mon, 04 Mar 2019 23:49:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551772182; cv=none;
        d=google.com; s=arc-20160816;
        b=xebNuHIStNYeyojpxRWCISKpCjdwRBseNLW1oupsQEstcAq+gKTrOzHjjAaKJYkIaE
         Ur5mhL7G4ImA9qn1FKIw8QzTaNmSXSW8RtWsdGQOBHBhvFVJZ1cEFDpWRHvqPe51rELr
         VCye4/2JpD8ndfxcp57M/45+rtGkiNXdwSP9NZF2mnljKnO4wFcqF/i915onfNkTGQHM
         5riWJ7WwTXP/oIah9mQ/KkM2Sl0g36tIdd5wRgfatLOQ3/d984wlhoN4FFUCEkr3ta5m
         ABG275eZ08UgJ/doLlAfVp+1P6nJUTuUE3I3fAlJmJiZcyGe3Me8uLhq3EE8vJ6seuSI
         e3wg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=vzly12PMSS3N4PzwURjuI5Da/tSWbyvuglusJWwn4ss=;
        b=JTC9TJ0ywHgOM970ALhQ2KiZhRAZRO2bsjmlIs/QsRIGJdufC4/jRj37V/x53nN1bp
         uRDSuxlpMpdUgOfmt+nd+AEdHRtXRmNmbRhbWagtIWMtVf5n88hygtjgp1dpJ+gX+h/0
         yaNEHSbPh5UCbIIBMe25YEkpGOU9giQCT0nvzARBaStQ6aPzWqi5Sn6l6/aD7RcmWLLt
         ChpyqHymM9IH2hypm1FLaIsuelwFwlcG9ujRQjWtGLexC6wMPqehBGzl05002e1iJRgk
         lpFIjuj9xKbQccxwYiKwWBQUtK8QJp2ebxmLnv+cOp+KJCKuDsmgbedCcein6lD5DZl6
         G0DA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=S2q7UgID;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q85si444708vke.5.2019.03.04.23.49.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 23:49:42 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=S2q7UgID;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 52D0C2082C;
	Tue,  5 Mar 2019 07:49:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551772181;
	bh=i/aTOWzL+wQ+6I54/LJW9h78O42UwfAu3KhUqEDghK8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=S2q7UgIDA+kESsKpN/PAWBbKkqaP7VeiYp6ojdn9w7vRfdMNk7f8jjWXwDBNgW4vK
	 P9ujt1HPpl3QzRLuWlk6HJ7Lg/LTWmO5XOFCH9UpbjbKUIkmb3wfK1X9Q0SEzL42RB
	 DTsq7vJVQX8F/4oEK1SfhE14EO5bFi9vr4vxEPaM=
Date: Tue, 5 Mar 2019 08:49:39 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: fwserial: Add Brackets around Parameters
Message-ID: <20190305074939.GB6956@kroah.com>
References: <20190304181015.1203-1-nishka.dasgupta@yahoo.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190304181015.1203-1-nishka.dasgupta@yahoo.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Mon, Mar 04, 2019 at 11:40:15PM +0530, Nishka Dasgupta wrote:
> Add parentheses around macro parameters to avoid precedence issues.
> Issue found with Checkpatch.
> 
> Signed-off-by: Nishka Dasgupta <nishka.dasgupta@yahoo.com>
> ---
>  drivers/staging/fwserial/fwserial.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/fwserial/fwserial.c b/drivers/staging/fwserial/fwserial.c
> index a1b90ea7fcb8..120d91dd6c8c 100644
> --- a/drivers/staging/fwserial/fwserial.c
> +++ b/drivers/staging/fwserial/fwserial.c
> @@ -89,7 +89,7 @@ struct fwtty_transaction {
>  	};
>  };
>  
> -#define to_device(a, b)			(a->b)
> +#define to_device((a), (b))			(a->b)

Also not needed :(

