X-GM-THRID: 6528044448013615104
X-Received: by 10.80.220.141 with SMTP id r13mr3299119edk.4.1520534049802;
        Thu, 08 Mar 2018 10:34:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.133.197 with SMTP id q5ls2629870edh.1.gmail; Thu, 08 Mar
 2018 10:34:08 -0800 (PST)
X-Google-Smtp-Source: AG47ELtNN6em6T07K+d0tM+r/uvzJuPiag6UXTjzOqQyinzvaU0uRcPc+U5juHi76jt5+KYVqIB6
X-Received: by 10.80.220.141 with SMTP id r13mr3299103edk.4.1520534048462;
        Thu, 08 Mar 2018 10:34:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520534048; cv=none;
        d=google.com; s=arc-20160816;
        b=zKIv32PJP0rw5GB4G+UNRNBhgHBNpaIBRbZz2Pq94lr18dJclVLLeLtDCIPTpUdnvH
         kdXM/fPn4vuGVwWA3LOT95t7cz6/qtaNq475femqiqZXvhYwmTYG+YOPc4jnN7XydLUF
         kR6G4zlrx8bu8pkyIAEY8zcVB6239H3zGDph6xbsHPIhgt/1+6yytRIojMhjnjnJ4lRJ
         YM17b2ykkkGTeosImuDWBIevH/z4AJuJs9rVXKDAaqOmFz6YAQ2DWcxmXL/ooRUIhOqZ
         xzynbzK4v4SBRV78wQD7NJ+oIjjaWcLzLcOcNZ5zDL9ywk8SuMnyzKy8DJEFjB8nHpJM
         TPtQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=AHLhANlr3UhZq7GLd3i/9t0EdBqvLKAd2Ph+AjZPAm8=;
        b=POvExMeCUR/bZzkCMaIby2tlOUmox1v4guZmc4gTLbNBfcMYjkExAbX+bskhRp/pI4
         iU2mIe1X+cjLiAa90rwv/usKsCRYKLfwH1fac5D42TfrHCzGjJGGilHlhBVKzlRWY+H0
         Qc4GIr3LJZEI+ZgOicau6iNKxcwRGLGeOg5uFXLFMEAXV4hLffDkaDqGF905p76A4UY0
         uNXLKrcWDePgrwzkuzKRY3Yieb78xJl3gVD3p/dJOqT0YeJl+a4G3qO8e2OzkG3WLNvI
         RbA5snuOUdDDzc8ZFJB988GxRf+IUCisWv1L+/46h81YjBS1NCPzqlRTNN6tVwcyRmUe
         IIzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id f9si277784edm.2.2018.03.08.10.34.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Mar 2018 10:34:08 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [185.236.200.248])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 82911516;
	Thu,  8 Mar 2018 18:33:57 +0000 (UTC)
Date: Thu, 8 Mar 2018 10:33:58 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Cc: outreachy-kernel@googlegroups.com, eric@anholt.net,
	stefan.wahren@i2se.com, f.fainelli@gmail.com, rjui@broadcom.com,
	sbranden@broadcom.com, bcm-kernel-feedback-list@broadcom.com
Subject: Re:
Message-ID: <20180308183358.GA16682@kroah.com>
References: <20180301203136.GA23219@kroah.com>
 <1520533402-23477-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1520533402-23477-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Thu, Mar 08, 2018 at 11:53:22PM +0530, Nishka Dasgupta wrote:
> The last email on the thread ended:
> > Look at the code, and see what checkpatch is telling you and see if
> > that actually matches with what the code shows. Then make the change
> > that you know is correct based on your knowledge of C, and how the
> > code should look. Hint, checkpatch is wrong here, but the code is also
> > wrong as-is.
> >
> > thanks, greg k-h
> 
> I am afraid I still have not been able to locate the error. Is it a
> problem of too many or too few asterisks in the line "static
> VCHI_CONNECTION_T *vchi_connection"?

I have no context at all here, to know what you are talking about, and
your emails are long-gone from my queue, sorry.

That being said, asterisks mean special things in the C language.  Be
sure you understand what they are, how they work, and when they are
needed.  Perhaps some more C language experience is needed here before
you work on the kernel?

thanks,

greg k-h

