X-GM-THRID: 6463673488893804544
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.36.34.85 with SMTP id o82mr2908030ito.49.1504942074488;
        Sat, 09 Sep 2017 00:27:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.195.15 with SMTP id t15ls1414754iof.46.gmail; Sat, 09 Sep
 2017 00:27:53 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QDh90dZlOJAUMERVgvLiqLG5jWBh+foJcmw8siWzi0TTtm1H2iT8OsAuwCRcDmHOTrtNvdV
X-Received: by 10.202.195.130 with SMTP id t124mr3076533oif.28.1504942073724;
        Sat, 09 Sep 2017 00:27:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504942073; cv=none;
        d=google.com; s=arc-20160816;
        b=p/GKVhLfy45nXhsh0sUAdaZcG1Pb9uThpd9pnCWvVlOuHq1opcwM1WiMFZTnUf73R+
         4H1SZVtL1u7aibKWXz1sNjY4uSSn545AHPOMQS4BozasRNMGqIFmXC2x011rcTjJjKa9
         uvD184avjGoo93gV7ADSYi7V/AB3cHaCGr3GHvjSUKRCXPk/JaXGoNbZ4T5qtCqfWfiK
         wmjmj5KODTfi/LlBZU+NtJ6/hcLyntyZfiyZMPx4hmcRgA2nBPVx2zp4C34Zt1kiRW3n
         N7ughq+yBHnPPORU1Too05PegZE8XdciylaLMhQcylect7QA+7vplXoJy2ZrQLQm8qMv
         8BSA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=eRMVkZlnaGaYOa216/K2YjpqXzrfV++iy8U9GtnZrII=;
        b=cYr3XrqInONDiCx8AZ/ZOk6XFAoAw9PoFuxNDIP4wvFBnkjtqbbw7QrWDYeqbzW9sI
         6+eUzYwj5VQ1Wo7qmSIq7DjrmeAUUmC57ve8xo+ii8popAV3Y09ECC0PzTQRoRXolvDf
         J2p1gse46ZMugDhaVBAN67jbHpyzLdbW69g4aSoMI4tGEncKgq4D4MKI3vrWy+9GZbVC
         M9zwaszE4Db5jbJKj1K6Nphe6Iur1ExTaOdPM2vjnpr5iKfN/nyUoy2OprkimC3wdZZr
         VsNbiaHx/s39SkJFifC3XFyIeh/hB6JrX4n9COAKeiIKw64hjIdhJfks8gp/avtbmO9n
         UVCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=MhgpQZRE;
       spf=neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of greg@kroah.com) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com. [66.111.4.25])
        by gmr-mx.google.com with ESMTPS id m186si151512itd.9.2017.09.09.00.27.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 00:27:53 -0700 (PDT)
Received-SPF: neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of greg@kroah.com) client-ip=66.111.4.25;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=MhgpQZRE;
       spf=neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of greg@kroah.com) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 393DB21AB8;
	Sat,  9 Sep 2017 03:27:53 -0400 (EDT)
Received: from frontend1 ([10.202.2.160])
  by compute6.internal (MEProxy); Sat, 09 Sep 2017 03:27:53 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=eRMVkZlnaGaYOa216/
	K2YjpqXzrfV++iy8U9GtnZrII=; b=MhgpQZREdRj92NtBo74Sd4mKAmyqg+byPA
	nw4zS4i07UJCH9oJjuUCV4o/w0+tI1FecJXkIx/lglMW6tF9PnDv+6Mt83jnAscf
	oBvamUtA/KrjEpHgiqZtTNg/ooc0Eqqgim+H9OAffz0XYDcdE/Xmcc6brNuUvSMf
	6a2acZDnIG0ViG0qPw2k1RwJrSEbtE0Y3rGsO+m3c9zOQnz+RvJ4xOFI8YCGidxk
	zdlgqAAFVwA5hxvU5bMgI2rJNPMSiM/gEPZ5jiSkeN4Xx+qCr4kOPnt+143rcpIZ
	IRCRmYEA5I/eqzRHeS8VD4TIpz6CJ1Lw25pweNoAHtlQ4ErXdx/g==
X-ME-Sender: <xms:-ZezWb12iV9dyD59zkggkcE8ELiF3Jdjs3DHCJafUM3CMcSJdlUEMQ>
X-Sasl-enc: d2Xx+zwLlUSladTVA+jLsWA/T/Ct1cht1LLem5ciU5w2 1504942072
Received: from localhost (lfbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.messagingengine.com (Postfix) with ESMTPA id BE8457E6DB;
	Sat,  9 Sep 2017 03:27:52 -0400 (EDT)
Date: Sat, 9 Sep 2017 09:27:51 +0200
From: Greg KH <greg@kroah.com>
To: Shreya Singal <shreyashivam20@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Unable to setup esmtp email client
Message-ID: <20170909072751.GA29033@kroah.com>
References: <6cf3cc61-1b62-4ef9-abb2-4d5e5720a2c3@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6cf3cc61-1b62-4ef9-abb2-4d5e5720a2c3@googlegroups.com>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Sat, Sep 09, 2017 at 12:14:18AM -0700, Shreya Singal wrote:
> Hi,
> I am unable to configure my .esmtprc file. I am unable to setup my email cliet. Some help would be useful

Exactly what did you try to do, and what is the errors that you have?

thanks,

greg k-h

