X-GM-THRID: 6463467119656828928
X-Received: by 10.28.55.209 with SMTP id e200mr73730wma.0.1505248998382;
        Tue, 12 Sep 2017 13:43:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.161.4 with SMTP id k4ls555902wme.7.gmail; Tue, 12 Sep 2017
 13:43:17 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAW3uzgvua2AO2q+iEPwyPpv4HdLuz7mf3evlbAojbcVn+YjReOvlCh1wqZfRpKkumvquei
X-Received: by 10.28.230.79 with SMTP id d76mr74136wmh.12.1505248997151;
        Tue, 12 Sep 2017 13:43:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505248997; cv=none;
        d=google.com; s=arc-20160816;
        b=B6UzrSTBKPsiRRtC48dJER9EDZI0jKH73eG/Ll/t8VJt/KvcvuL6D2QNz/rEPvAsMZ
         q+Vh81Nwd0w/aO4FAegNR3r1sIivA+5kgeWifRsaGAxfg7w8FY/4n2jXaysqrsN6xLXy
         egWkq3WZWr34uduGl81vi3zvw27/ITz/4qRDN0sfic0bu2TRfQd8LxnD/XucnyDjh+Gc
         JZL0wlcelFFFvvD3WHVJ5Txv+WaobcsYnRuMfTliw+j5hWzLv4Kghk7dKhPgeyXJ+ULH
         Rhe/P1qiu6KTLNbkJ6V63G1QIb/pPSGDURDCDUIqkcpZa1fymRuHAgEZqbQ+4+4Z0Djj
         sGuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=Qu6lg9l81TnpC6PlHP8S57RXEoJzhHgkcHM3tZDgNxQ=;
        b=BbvZMeyvVRZ7WFuqE4oLzbb6Qw40pA2/WE1RE5AiiCrB9SorAXwgpAZNbXBgg57wXk
         02hUABtyjlEgb2SMCO74Yt6eLPdg+X/PlgoVSxy32YVNgAwsXS4SYMqOl4SjpAIOaykn
         CxBTJI2dsg42fzJWsJbAhK+rpteYbbwI7NW+yRmhs0sMHJwHmXz5Vr26z5sErpex9A+U
         d6yeiC7sEZTzYJ90TAbZfDWBbnqhXtfbXa4tL2qHKN19YuwuzeWDDDjX0Uvb84gkS+TH
         Z9klPU5yd+Eqr2bd34NHjKSFlDXESR1uy19MKfmhYh4i6UA8DmH3hYBFH5rwTIhcPsfF
         yiBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id b203si830529wmh.4.2017.09.12.13.43.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 12 Sep 2017 13:43:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [12.145.98.253])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id BABB2B08;
	Tue, 12 Sep 2017 20:43:15 +0000 (UTC)
Date: Tue, 12 Sep 2017 13:43:14 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v3] staging: typec: tcpm: Rewrite comparison to NULL
 pointer
Message-ID: <20170912204314.GB20215@kroah.com>
References: <1504893085-6113-1-git-send-email-harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1504893085-6113-1-git-send-email-harshasharmaiitr@gmail.com>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Fri, Sep 08, 2017 at 11:21:25PM +0530, Harsha Sharma wrote:
> Make code more concise and readable 
> 
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
> Change in v3:
>  -Change in subject and log message
> Change in v2:
>  -Change in subject 
>  -Change in log message
>  drivers/staging/typec/tcpm.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Due to other things happening in this driver, I have to wait until after
4.14-rc1 is out before I can apply it.  Don't worry, it's not lost, I
just have to postpone it for another week...

thanks,

greg k-h

