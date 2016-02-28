X-GM-THRID: 6252531554516467712
X-Received: by 10.66.63.68 with SMTP id e4mr8821315pas.40.1456666383222;
        Sun, 28 Feb 2016 05:33:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.46.65 with SMTP id t1ls268260igm.30.gmail; Sun, 28 Feb 2016
 05:33:02 -0800 (PST)
X-Received: by 10.98.42.67 with SMTP id q64mr8938417pfq.9.1456666382905;
        Sun, 28 Feb 2016 05:33:02 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from mail-ob0-x242.google.com (mail-ob0-x242.google.com. [2607:f8b0:4003:c01::242])
        by gmr-mx.google.com with ESMTPS id ph8si629624igb.0.2016.02.28.05.33.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 05:33:02 -0800 (PST)
Received-SPF: pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4003:c01::242 as permitted sender) client-ip=2607:f8b0:4003:c01::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of htejun@gmail.com designates 2607:f8b0:4003:c01::242 as permitted sender) smtp.mailfrom=htejun@gmail.com;
       dkim=pass header.i=@gmail.com
Received: by mail-ob0-x242.google.com with SMTP id wz1so8498121obc.1
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 05:33:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=sender:date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=XzDqTuKvdSiQNtXsxth1NyP3oSxtwLc7KMZNz5fcq9g=;
        b=r6oFW6reYFnodfomsNRmp+1J1I9iZ/Q99qlVmwr5aGRgd3xP1Kn6adi7jzcC87zPh3
         IRrMZgXk0U4+orp51HakYDX6juFSL2feWn+BrbCih2Aupgk4AOwy/oV8XqyKixwjgXvw
         N+2eEuNqGFgsDcU8TunLnZrqVNBGqILpiKkup07i0fX/q/ZQuF0iGw3oCBOo5i9E7esI
         857oG7Z0WOA85Vqr3FuujWsSW84yRD90pssWEz2CWGzwfUj1LuoaYwFJSOTnMQQe4zrY
         fB5AHEpIn9uuaEh9r1UVjQb+2EdMbblPOjWODLn7ubPBSswh1bu0SitfMy/65cG5Az0r
         ht/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:sender:date:from:to:cc:subject:message-id
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=XzDqTuKvdSiQNtXsxth1NyP3oSxtwLc7KMZNz5fcq9g=;
        b=iNu2UCG7olrOP0akrS26Sn6NedETD758btzfS5omKiJA7W0BjmUP9F/SHRKlhpgTmM
         MlKPpric3TbUh0FqYxMH1DroI1qcvarkjbA97CZMFEfn6Gpq6pCs4ImWRHaYQ0EgS+Qt
         tkV8mjx91dqkGaM8MIc0mInvwVZp1r4BifkYIJ1i+6dlyxkhd4ynvOjRRBPHz/dC2ykT
         HV2gFNJyntPPMAaORdpMd7f8Ft80C9d/lrK7bdBC8x0TKiHFWWBG2ZHf5gAqXhiFtvCz
         7U7QTKdoZmeSg5lZCaGuQw5g3lpGdxl7jlrlTMswqINBKVb6yjLDmimGTpdIzoxAJEG+
         b9Yg==
X-Gm-Message-State: AD7BkJLY6VYJLycJZm7E1Gcv2Yr5VIctKu/AgcmXZ2sNFmYC6ZalifgoFVNFy0Pmq/oYjA==
X-Received: by 10.60.176.100 with SMTP id ch4mr8131255oec.7.1456666382684;
        Sun, 28 Feb 2016 05:33:02 -0800 (PST)
Return-Path: <htejun@gmail.com>
Received: from localhost ([2602:306:b8cd:a0d0::2f])
        by smtp.gmail.com with ESMTPSA id x144sm14661861oif.23.2016.02.28.05.33.02
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 05:33:02 -0800 (PST)
Sender: Tejun Heo <htejun@gmail.com>
Date: Sun, 28 Feb 2016 08:33:01 -0500
From: Tejun Heo <tj@kernel.org>
To: Eva Rachel Retuya <eraretuya@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/5] staging: iio: light: add space
 around '*"
Message-ID: <20160228133301.GO3965@htj.duckdns.org>
References: <cover.1455730714.git.eraretuya@gmail.com>
 <aa13c3f675f3aac09cf285e8dcd8cbd746b8cc0e.1455730714.git.eraretuya@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aa13c3f675f3aac09cf285e8dcd8cbd746b8cc0e.1455730714.git.eraretuya@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Feb 18, 2016 at 03:35:39PM +0800, Eva Rachel Retuya wrote:
> Address checkpatch check pointing out the lack of space around the
> operator '*'.
> 
> Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>

Acked-by: Tejun Heo <tj@kernel.org>

Thanks.

-- 
tejun

