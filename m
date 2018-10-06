X-GM-THRID: 6609200682225369088
X-Received: by 2002:a62:c48b:: with SMTP id h11-v6mr8159562pfk.57.1538848805517;
        Sat, 06 Oct 2018 11:00:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:aa04:: with SMTP id be4-v6ls4728947plb.2.gmail; Sat,
 06 Oct 2018 11:00:04 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63Xf5kCBBdW8PR7/JMCAc54tRH8XhwIjIC1HxM+8aMCOyf9ds3wzsFo9P9IqeSSfKXfTPc4
X-Received: by 2002:a17:902:8543:: with SMTP id d3-v6mr8030356plo.52.1538848804714;
        Sat, 06 Oct 2018 11:00:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1538848804; cv=none;
        d=google.com; s=arc-20160816;
        b=ap6K9+H0jvBr/nt7qx+s/aIBOqEnr+6VFML9J6M32I5Mt6LJq8qkTRtd/CufcaSQVW
         hPFpmpN3CUReCTbwR4xLLkXwYa2LSE/aPcobyJJ7fFO2uBCIcms6RO72DrgBQ34M93Xv
         ztvICZ7PGi9Mxmj9aEwyJ4DPx+c15fnp3wq7eA+0YsnKQKMnsOEf24X0J5nu0UeepXn8
         yDDSIx7ALyC6k+Qg2y4GDrunVINnV3rfBCdZ6y/xtYApQRisKYozqRK0bML/IQASYXPb
         ti3g2yaVWwAd+vMEZM6BsRSJH0HpMJrbnOeWNgkVQ5WeTxlNThKbwhJbSXB4Cue3zaiS
         /Ppg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=l4QPaOeAIedhXFdysSjiTYR9SayzsCcJiqs58kSOns8=;
        b=Bo51qvwpqb6sJJMFlJ9BJhWGd78zNlcs+FvZA3tTwt8nDPHWh68mmCZxAZIW6vQQPE
         zFOAWIMR8KKbcPvNxKB8j4Mr74g3X8xxBwl4SD4zBf2hJG2cZ7+4ylxvZCk537PyPvRS
         DQfq8LVh+ZiobWBrfDs34IDM+Lg3He+sx0lwppgBJUNs6hF54iUrASUeQ8lIW/JpnySp
         XEiUVLP0t+GefTwEddHVSVUv8oSRziO6T+Wd+0th8YDYpk7rxLihJTo5PoCfa7E25pew
         5kbporuOvX5cGgxwM1FPtBbyR8rJH7U+dfZIqtFR/HOy2RLz3P4Pfr3SaIC7jFmtPMMr
         XPww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E9rZ7PjZ;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himanshujha199640@gmail.com>
Received: from mail-pg1-x530.google.com (mail-pg1-x530.google.com. [2607:f8b0:4864:20::530])
        by gmr-mx.google.com with ESMTPS id t8-v6si390464plo.3.2018.10.06.11.00.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 06 Oct 2018 11:00:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::530 as permitted sender) client-ip=2607:f8b0:4864:20::530;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=E9rZ7PjZ;
       spf=pass (google.com: domain of himanshujha199640@gmail.com designates 2607:f8b0:4864:20::530 as permitted sender) smtp.mailfrom=himanshujha199640@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x530.google.com with SMTP id t70-v6so6061834pgd.12
        for <outreachy-kernel@googlegroups.com>; Sat, 06 Oct 2018 11:00:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=l4QPaOeAIedhXFdysSjiTYR9SayzsCcJiqs58kSOns8=;
        b=E9rZ7PjZ2lT7L2Tv5LE6FMnCoPo3K4KxXe/eOidvrEgDRDEs/gmmTnw+pDVz90/u2k
         A9HOmPMIe7dKkeTBDaxIaw3mREX8KLk9CwDtlx+72hcwS+asaTq221H8HSCioIIeaMLE
         LXXnAjyk62LlHnGr9SOihNK6ShcDZPd7s1b/CqKdgSz5cwJIcSZgHXCYcib2cuTHrjv5
         I6FSMLtvbV9T/6ooy3IV19clGOM17KA8lH+7JcEf6BY28UU5OCZibuMMvo0bY+TxeIu7
         owdkpAdJtBFVYLmwSQknT2ZWxv0o7r3ULR1xfnw1Lg6biLtOcKQc0r8yBddUA1g0PFl4
         SyAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=l4QPaOeAIedhXFdysSjiTYR9SayzsCcJiqs58kSOns8=;
        b=tbm+YGosASV9d5jT9dzUYCTt7N/U2YtbYeGvzZPrUHIDD85jKP//m83cBYWUMp/qzT
         E0sa3g218Aq7uKZVBZ5E6tvXlCm0u7lTMTmpSjuoUD5hcVmXe/gSsN3lhbFv/YnjPMIF
         mmupGxYeDTn1IcOhSyJNylKaVWdc0ZeIKpNMf8LGxZ51ISer6c0QewdRd1ImxqKOViZQ
         08+zWnk3AB5ESrU+Oe39wREw82O9v/eGDfvCc1yn0lzrOFHsDC3nHpTVLvqp6eo3UWLl
         VzVSTVjboifEEiJl0tCk7wV2NM16HBV1cxtV7lf7sESvCuwglBtR+5caPIqGKZqM4gou
         0yQw==
X-Gm-Message-State: ABuFfohtCCK4+hU/fRwxNYPj90FIvOvIZrKUG8lSmA7GfqLE3tFTt7s7
	cs8yOoD7JL09MRzXJwJbNsoqhrQN
X-Received: by 2002:a62:d582:: with SMTP id d124-v6mr17594230pfg.31.1538848804366;
        Sat, 06 Oct 2018 11:00:04 -0700 (PDT)
Return-Path: <himanshujha199640@gmail.com>
Received: from himanshu-Vostro-3559 ([103.233.116.134])
        by smtp.gmail.com with ESMTPSA id t26-v6sm17757714pfa.158.2018.10.06.11.00.01
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 06 Oct 2018 11:00:03 -0700 (PDT)
Date: Sat, 6 Oct 2018 23:29:58 +0530
From: Himanshu Jha <himanshujha199640@gmail.com>
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [Outreachy Kernel][PATCH v3]
 staging:comedi:comedi_pci.h Prefer a maximum 75 chars per line
Message-ID: <20181006175958.GF6283@himanshu-Vostro-3559>
References: <20181006135752.GA3037@veda-VGN-CS3AGH-R>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181006135752.GA3037@veda-VGN-CS3AGH-R>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Sat, Oct 06, 2018 at 07:27:52PM +0530, Bhanusree Pola wrote:
> Adjust all lines exceeding 75 chars per line to fix checkpatch warning.
> 

Would you mind explaining this:

from:	Bhanusree Pola <bhanusreemahesh@gmail.com>
reply-to:	himanshujha199640@gmail.com
to:	outreachy-kernel@googlegroups.com
cc:	bhanusreemahesh@gmail.com,
gregkh@linuxfoundation.org
date:	6 Oct 2018, 16:44
subject:	[Outreachy kernel][PATCH v2]staging:comedi:comedi_pci.h Prefer a maximum 75 chars per line
mailing list:	outreachy-kernel@googlegroups.com Filter messages from this mailing list
mailed-by:	googlegroups.com
Signed by:	gmail.com

"reply-to" ?

Please check your email settings!

-- 
Himanshu Jha
Undergraduate Student
Department of Electronics & Communication
Guru Tegh Bahadur Institute of Technology

