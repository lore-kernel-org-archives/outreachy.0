X-GM-THRID: 6396667328901152768
X-Received: by 10.107.160.135 with SMTP id j129mr8362624ioe.20.1489340682578;
        Sun, 12 Mar 2017 10:44:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.9.185 with SMTP id q54ls1111325otd.11.gmail; Sun, 12 Mar
 2017 10:44:42 -0700 (PDT)
X-Received: by 10.129.112.73 with SMTP id l70mr13169552ywc.45.1489340682267;
        Sun, 12 Mar 2017 10:44:42 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x22f.google.com (mail-pf0-x22f.google.com. [2607:f8b0:400e:c00::22f])
        by gmr-mx.google.com with ESMTPS id r66si2724554pfb.7.2017.03.12.10.44.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 10:44:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) client-ip=2607:f8b0:400e:c00::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22f.google.com with SMTP id o126so60468997pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 10:44:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=NGFz83rkTx1dicCZJveErm6DnyVpbOvCK5aGHoP4P+E=;
        b=OoC1OGi/op89kQ0K0BxYVzj2qciep8aMRHdbZozm1Q0CYNN6n/SLTAKL5W2buKWIhd
         Lbos8cthbcq8ZvYYZHIp1BfUKCjZ7XhKjWk8LgcvKLw0X3DTK0+wb0K0mMfx629jbVY9
         t1wvha9Q7CK1EmVjeaW7/QS/7h4LnUDIIG/tZ6qZKmEdNqVGx6oY8IOb+Hs0XyqK1jm3
         Jol/OeJQ9HnbcXaOUC7lEwUQvxsLm6iK17uvkPwvxuFDcxZW4FdAc1ZX8iAy+HydeqQw
         Ka/MV2PII4t7euEDzkIcVehCOf0nLOs/FEni3k3iwZCEB3QjoXiYT30ZWoRKvmn62YdD
         U5Bw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=NGFz83rkTx1dicCZJveErm6DnyVpbOvCK5aGHoP4P+E=;
        b=dsb4eDzeOg/ewt+PLrcU9PVH9wrr/7BZvXhg+M6SoLkBBVo80jgUtFEjtzyTDhjVvk
         AGXF0n5OiNQUMz5gM8RUCTPMiyhuVXraORtSV2scNumFveDzSzubNIKdX1yyxeJSV6qa
         6RWWmpyWUfLNDn/FwLEyD0zwWr/hA/lOtBFH3FHXO1alQ1PRdthdzajofCZXksJytWAA
         agyEzwMzD6qviilvOA/yQ3PEzbLAvcoqtOBqT55TyVRFD9z0kwvXdYWHwsVFsQtLZ03O
         qeiw22PeaY9n65sZmI0JLl1WEfsRaY9Rq38DhuFYcgylWTg+MVA6UHy5ioyLqBTPy+7m
         Nymg==
X-Gm-Message-State: AMke39kCXOa7VomygI7wo6aFhRAtuEZmxYgdbi0MZ6tRrTCwvLSy/vqzuaQvtqPNPx9zTQ==
X-Received: by 10.84.210.167 with SMTP id a36mr41969181pli.40.1489340682045;
        Sun, 12 Mar 2017 10:44:42 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id y6sm29578011pgc.1.2017.03.12.10.44.41
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 10:44:41 -0700 (PDT)
Date: Sun, 12 Mar 2017 10:44:40 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [KERNEL NEWBIES ACCESS] simran singhal
Message-ID: <20170312174439.GC3711@d830.WORKGROUP>
References: <4356b92a-36b0-48b6-b4eb-f1d1df878262@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4356b92a-36b0-48b6-b4eb-f1d1df878262@googlegroups.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 12, 2017 at 10:36:10AM -0700, SIMRAN SINGHAL wrote:
> Hi,
> 
> I want edit privileges.

Done. Let me know if it doesn't work.


> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/4356b92a-36b0-48b6-b4eb-f1d1df878262%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.


