X-GM-THRID: 6466889326390149120
X-Received: by 10.46.64.20 with SMTP id n20mr2000127lja.36.1505727221376;
        Mon, 18 Sep 2017 02:33:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.65.81 with SMTP id o78ls780722lja.34.gmail; Mon, 18 Sep
 2017 02:33:39 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBY3WN9sdO6zD3DIFytUjR8F/3F++lscI4alxWzNhsybrjEkAYN1XIyTQhNXE5gTB/io/aN
X-Received: by 10.25.77.17 with SMTP id a17mr756017lfb.21.1505727219849;
        Mon, 18 Sep 2017 02:33:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505727219; cv=none;
        d=google.com; s=arc-20160816;
        b=i8vruphFgWKkMBmqoQ6uFlLT8YbgbAN7ntalg4PjtPBPnkogeuMqxDq7yOqjT10k0E
         PPr89XoyGI3Ey0qjbLI2v2Pl5aXYnA21G7a6FFxmlWTAMf8hJmp0x7fpnIfUsC5Fe3oo
         U3HJms509gN5NU0kQlcwxnjILciD3eYbvIEMIXXq7o13QAa74md+GX3uwr6t8TXJwhM5
         SuSaproJVg49cjmnephV0ceR2VK8L8t5T82qNYlpscIrE7WHLBZWSCwW83NnyWk9A9X7
         cbYo2DwJ3Zxe1Rz+WueuJWPUlCUmTfCxnch7awWsBB54f71NC39sEiUJi0SiEgNO0VsC
         RA7w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=sSuydGAdlfX1aty2VyrSkDtr5eeKHzmUtxg18pfAvBg=;
        b=qg4MeWQYuXLOi1TRC4fva/3/D5OOqPdWOer9vx3eAnVVOZHg0+cd1/5QBLMEDkSqSQ
         5V8pkMbHKr/GYCwPhN/vV0TD2gzVOqkhVGA1jeKU9U12xPlZa3dPufOgRTOHhpGGf0yL
         /YwJdI09/uHRbAYoO6qQ/+RTaRHBscOfne2vZ5hy029ms6+Lm1i1gXZ6tTwLXpjF9Luq
         i5UI9ALCYY8AHGuLcicIOu3Yuh54sfQ56XGw2poAYTOlGIlX8A8Ilu7DPuKvWiPmOzd8
         u2iK5RMVhOyYv1jdWfwblWHaFfukzaAIDjn/MtvdpPHkoGbk8KiYEpfLHEse36p/zFee
         Zmgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id j4si529497wmi.2.2017.09.18.02.33.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Sep 2017 02:33:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2168BB50;
	Mon, 18 Sep 2017 09:33:37 +0000 (UTC)
Date: Mon, 18 Sep 2017 11:33:49 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
Cc: outreachy-kernel@googlegroups.com, jsimmons@infradead.org,
	andreas.dilger@intel.com, oleg.drokin@intel.com
Subject: Re: [PATCH] staging: lustre: lustre: Use kstrtoull instead of
 simple_strtoull
Message-ID: <20170918093349.GB9461@kroah.com>
References: <20170917231319.gmp3cl4bpagcyvgi@fireworks>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170917231319.gmp3cl4bpagcyvgi@fireworks>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Mon, Sep 18, 2017 at 02:13:19AM +0300, Georgiana Chelu wrote:
> Signed-off-by: Georgiana Chelu <georgiana.chelu93@example.com>
> 
> Because simple_strtoull function is obsolete, replace it with
> kstrtoull. To make the change, some code refactoring was necessary.
> 
> The lprocfs_write_frac_helper() convert a string to a float. To keep
> the functionality, split the string into begin (the digits before '.')
> and end (the digits after '.'). Then, apply kstrtoull both on begin and
> end, and build the number.

Doesn't this seem a lot more complex and error-prone?  I recommend just
leaving it as-is, there is a reason that simple_strtoull is still in the
kernel tree :)

thanks,

greg k-h

