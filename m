X-GM-THRID: 6744763915639455744
X-Received: by 2002:a5d:4d4f:: with SMTP id a15mr20295104wru.267.1570397474942;
        Sun, 06 Oct 2019 14:31:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:c8d9:: with SMTP id f25ls3058923wml.5.gmail; Sun, 06 Oct
 2019 14:31:13 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxUqQD5xFint1wZoU98VC6H0P73gidr+QJ0Ci7e6RQ9sAE3v61jZ20nqfkR3w4jO0GHPH8u
X-Received: by 2002:a7b:c088:: with SMTP id r8mr19257955wmh.44.1570397473007;
        Sun, 06 Oct 2019 14:31:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570397473; cv=none;
        d=google.com; s=arc-20160816;
        b=HoMeasSZ/Py1af8bGuYHsQHxWwEYCNvl5hePyoEPY1kiXvCUyqPmScgA1Qd6t01wTJ
         9UC9rDNgT/fvv6o1SqOGGodAGj3SIUW4x/xL0P0p+gGQTd7qDH+60Pq4RT0bX/IuFLsQ
         UrzCgujg4QSpemdXbKuDDnZ9zua26/e8LnpEmGyIby6uMynQgXNKoNJ5L2EaV+rqmrYk
         yPUook+RGZQcCAua5pdl67b4KcV+Du9FMgm4LND/TBM5kVcRQK4Sqq1JzOmCHHwoIZdU
         nr+CdvIPmyp3R/qlTWboHBxas9FEoCoQ2oJIeij0egj2e67YfjOn1OlsBXM0yn+D/jST
         oIbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=sender:user-agent:in-reply-to:content-disposition:mime-version
         :references:message-id:subject:cc:to:from:date;
        bh=EnzfqZ46LZW1Ts47iHRZ5CKEdGeayelIgMqrc/ija7w=;
        b=D71aW/6KXeUDCotwcTtn1GJq/HXee50qHGPlxrbWuq2LQa+ZPV09ha4GqcaYw33kLt
         SMgmU3c+ie4XYc/rRhj2S7ZIoDjsW0ShK/Ytl3qdl6Yw/IajEPQKeQ/Rq2dvuY1xhY+x
         BttitSDn9oj5PdITJpelVwb9bZYQie6Rl6jUUnMB9JGICBdYwmxP79j25IZrkcUyNSdv
         RmRoE27blSDNTEP8Hpe/JxVa53aBEnvOyrjgC7iDfFfJWt+lql6/OnicJPoePfSGEA7p
         B0pfrHSCkeMleidYZz5xjeEXFOI/UPMaZKbKHpp2gFtQTBjBF5RE3eyl5l0KTHxMoSpi
         mnZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of viro@ftp.linux.org.uk designates 195.92.253.2 as permitted sender) smtp.mailfrom=viro@ftp.linux.org.uk
Return-Path: <viro@ftp.linux.org.uk>
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk. [195.92.253.2])
        by gmr-mx.google.com with ESMTPS id x8si1244303wmk.2.2019.10.06.14.31.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 06 Oct 2019 14:31:12 -0700 (PDT)
Received-SPF: pass (google.com: best guess record for domain of viro@ftp.linux.org.uk designates 195.92.253.2 as permitted sender) client-ip=195.92.253.2;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of viro@ftp.linux.org.uk designates 195.92.253.2 as permitted sender) smtp.mailfrom=viro@ftp.linux.org.uk
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iHE7Q-0005Fd-Tt; Sun, 06 Oct 2019 21:31:09 +0000
Date: Sun, 6 Oct 2019 22:31:08 +0100
From: Al Viro <viro@zeniv.linux.org.uk>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	linux-kernel@vger.kernel.org, devel@driverdev.osuosl.org,
	olsonse@umich.edu, hsweeten@visionengravers.com, abbotti@mev.co.uk
Subject: Re: [PATCH] staging: comedi: Capitalize macro name to fix camelcase
 checkpatch warning
Message-ID: <20191006213108.GJ26530@ZenIV.linux.org.uk>
References: <20191006184903.12089-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191006184903.12089-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.12.1 (2019-06-15)
Sender: Al Viro <viro@ftp.linux.org.uk>

On Sun, Oct 06, 2019 at 07:49:03PM +0100, Jules Irenge wrote:

[mA vs. MA]

Table 5.  SI prefixes
Factor	Name 	Symbol
....
10^6	mega	M
....
10^-3	milli	m

Confusing one for another (especially for electrical units) can be...
spectacular.  FYI, 1mA is more or less what you get if you lick
the terminals of a 9V battery; 1MA is about 30 times the current
in typical lightning strike...

