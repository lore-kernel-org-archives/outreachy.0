X-GM-THRID: 6665415877185241088
X-Received: by 2002:a0c:d486:: with SMTP id u6mr6154630qvh.56.1551913068273;
        Wed, 06 Mar 2019 14:57:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:92c7:: with SMTP id c7ls1794962qvc.7.gmail; Wed, 06 Mar
 2019 14:57:47 -0800 (PST)
X-Google-Smtp-Source: APXvYqzJdG/QOpX+pzLU86/J1xjohLLr4P7O7PrCdOt/0PKa7VqvKqAaFoTdqUJjQ3pxffDnrCfF
X-Received: by 2002:a0c:ba1a:: with SMTP id w26mr5961982qvf.23.1551913067587;
        Wed, 06 Mar 2019 14:57:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551913067; cv=none;
        d=google.com; s=arc-20160816;
        b=hoWrHsvGl6mlgfT/wVrk5uqQxOycPX9DP8r4DrsLTx0RcJqgpaBa3LZOH4mZhygvMJ
         L59YOn7bql+gumjtHhG95HPfUorez6aaRmg3cH2LN1h8mKXyPcN8NDyJUE/zL/HWzcMQ
         cSK8YBCk0B2tYbwT3k+f8eTG9yoIuWyb2+FAreMERtOK1skpmrtMYcv2C79S/Q7FCMYi
         +6iWdtCcq4yKKVaxQgRLMXEo20HI722NPtzJhCWSryE0DRCtySillKz5c4bHTBxqgDlt
         jZgVzFykqR0/MvvI+r4aowLQqAnxZELdS7/awPWxBQY2IM9XwtQY3EtXBuyvrql9iiEQ
         XdTQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=JxwByjSD7SoO4x+Efe5yLhhUw/wNVbyRhFeM/hhPM9mABK35ayfCjbW6bJv4YWh/4y
         mLIQmlzLW9Wwp5FEyRM7D0+QouuOkjSHXfpr0nu7Bo3wNZ/+0bGKdG8MVC7XYeNzEiWQ
         Y73SEtsWHtm1bJvj6IYzvLjl0xknvFOU83sRFJYSpUUQmRMQgUusozUL3SGkWN2fjjTM
         TyR4OJUf86oTxJ+xlylF6Ho83MTf34D74tryDizCMOsQvG2nwmVyjZiheKhD0Qh3cXKb
         X49s3BDqakf96YKPwGRMXwbABIaV+NCRBxRpZqQRCjyTrcxBgfdFN4TQHcClSZsf2JPC
         j9pQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sMAKn+nx;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::234 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com. [2607:f8b0:4864:20::234])
        by gmr-mx.google.com with ESMTPS id p1si210469qkg.3.2019.03.06.14.57.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 14:57:47 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::234 as permitted sender) client-ip=2607:f8b0:4864:20::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=sMAKn+nx;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::234 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x234.google.com with SMTP id u128so11340997oie.2
        for <outreachy-kernel@googlegroups.com>; Wed, 06 Mar 2019 14:57:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=sMAKn+nx6e4H9LsOF+CCkdOU6DhvQm8o1R/PmCPe10JiHuSV8320n7hXTiOsutxtsk
         XPRxNotxoJViIiLCinwgHaORnGifPRgCLU9YEZTki0O6M7+PiuOy3TBLO0AYkK42iq8T
         yKOCYi402SMWDCmbyqOYFiENn5w7fa2gKNr3oMSWpwXTlh1KokVBDf3noOqUIjitLPUT
         tP2W6k601rJXGlaSB/en/Tk3GYcayD5fp5nVh5zoLpTuALsqA8MEfHy5xE51VaqOtauG
         uRJlvTbz/Yn0O5PSxnT/MDqPw4RXMjgISh88xyVMy/w5Ym8kWiUqCD6eYu3M5mLB62d8
         oC2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=47DEQpj8HBSa+/TImW+5JCeuQeRkm5NMpJWZG3hSuFU=;
        b=lCCeQCiPWWJoFWJoQHkvQwc+N4EocynESQ5AH65qQ2Ps71DZxS/IucGRebYpBjfwc2
         Q0/P2xI+nLPxJORWCoSO6ZmK235en7yJlRnrHsPFkeDS+nA3udBnvfHCrprJ9H5mi4xv
         a1UsvAt6TOTcdPC8GlrpAIolHPOr+OKklWsCYmw+2naLmkKdUaHk/7yp5AiXIhovvNA7
         6qRVUMKyiFGpM2duJShs+0eRVk7RK4tOaVjPi9qFk3wUTStMDW2NsIEyguPOdIvSj56T
         /Sy7HZXblR4TR5K4aA5yWtsrKN8wfinT00iGZkp1esbKdpjQ8aZ6u48pbVIHNZHhob+5
         xnoA==
X-Gm-Message-State: APjAAAXgyDJn7Uv6FkmgKyJ6xszkoBFUgxZjSBBGOPIyEgTqSW4rkfKC
	CeHGaPWyWFyRU3hJye2JkP5HC/l3iW5dKw==
X-Received: by 2002:aca:35d6:: with SMTP id c205mr3247395oia.176.1551913066996;
        Wed, 06 Mar 2019 14:57:46 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id d129sm1148737oia.38.2019.03.06.14.57.46
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 06 Mar 2019 14:57:46 -0800 (PST)
Date: Wed, 6 Mar 2019 16:57:44 -0600
From: Madhumthia Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net, gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: vt6655: Remove unused function
Message-ID: <20190306225742.GA12712@madhuleo>
References: <20190306220025.25508-1-madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190306220025.25508-1-madhumithabiw@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)



