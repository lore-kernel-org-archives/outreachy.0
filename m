X-GM-THRID: 6950041128990146560
X-Received: by 2002:a17:903:304b:b029:eb:4cf:8321 with SMTP id u11-20020a170903304bb02900eb04cf8321mr3921337pla.40.1618237794703;
        Mon, 12 Apr 2021 07:29:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:2f88:: with SMTP id t8ls7755918pjd.1.gmail; Mon, 12
 Apr 2021 07:29:53 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyC1BnagkdkA9/FBYmLGYOy3qZk4O+OXL5zv+J6+RZiiMSSB9i0wqGNg0aDbSgspAgpSLW7
X-Received: by 2002:a17:90a:302:: with SMTP id 2mr1805511pje.34.1618237793675;
        Mon, 12 Apr 2021 07:29:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618237793; cv=none;
        d=google.com; s=arc-20160816;
        b=LSQAShUfLQFka54nkkVKgf2zKu+bnY7lTFe4ZmqnDUtjKrqmA7jALSCuALP91Wh2oo
         GuQVWbRxNxIBQdFS+recK1WTivXGWR/QrbgbZLL4O4eTMac6MoIz+OXKLJh3OhrknoAD
         8QPaghiMCbeiybhwDsMFx3atxNjRsEyc12xLjFBnopFwuAXXl+0NQxpxbn+FaE73kVbd
         5Q6z+YTh6hbAZi9BKf+zBQcGYfle+uztdotvCSMihnhD+h/zWLc1Ef3jGizGbEGjx1wm
         hEjBY+PfcL8qMzs1XrMNxfVStWNuqhw9o6xLYUyEtFYMVbRakDlmAWEJlPftE/MrxmTA
         985w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=tKKcJsInlPqpfcFDpQt6bNttFP8cv3zMw+nHpvpdxuE=;
        b=FuoH2s9cF7B9TjS7WgxlblSYpXp4NfnlcY4kUG3HqTFKPSaUf9+8hzZ4Sp87ls+u9M
         8mR/03zdycAqcwRzknfZ3dp3ZxxJ+b1FCkLZ8qhVBEQP0BHnkR6zXAi2Hb2pd8hkYw/i
         ym2GQDmDcYY520dvRomUMH434jf685eQx4jHx1nuO7im8vj8awZkhA2wRlsGCLIrWrZp
         0amin2k+S8DcWGyxuqidaVOV+aDa+U4ujIayWuK/W//vL9lp2s5kg0qB6JElF6KMCzNg
         geCD4S3W8TcMPnEbwwgWoIA5LsLtsGJw0l/MMfhkiOe3a9HXZFnQfkx5pZ/ytNgxvXFa
         LImg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T6ww3nDr;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mitaliborkar810@gmail.com>
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com. [2607:f8b0:4864:20::1032])
        by gmr-mx.google.com with ESMTPS id u12si1059595pgf.0.2021.04.12.07.29.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Apr 2021 07:29:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1032 as permitted sender) client-ip=2607:f8b0:4864:20::1032;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T6ww3nDr;
       spf=pass (google.com: domain of mitaliborkar810@gmail.com designates 2607:f8b0:4864:20::1032 as permitted sender) smtp.mailfrom=mitaliborkar810@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1032.google.com with SMTP id t23so6726794pjy.3
        for <outreachy-kernel@googlegroups.com>; Mon, 12 Apr 2021 07:29:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=tKKcJsInlPqpfcFDpQt6bNttFP8cv3zMw+nHpvpdxuE=;
        b=T6ww3nDrZI5sxtE+ufOahTQ4WPxiy+Gzu+qA5iJQ4rE3l0r9k43GF0Bh+p1yOXxqza
         f+d45JZi72IoqYHbzV8y9QHbaFURzSvZSUyL05T+xivYN12j84BMjirB5qLJTAbaYvul
         tjS4gZzljNJXxAe1Rz1jSOdt18LyPPZtpi8Ovl2YQnOHdsX9d+jK8qIrBsnEmS7ozdbN
         JXibGXtnRBAgfdVO85fjIL4ErfXAzlbgn4MdrzSEOXfN2bPWHXFJSy54wT4sycvT0XC0
         8TWIcrRn6AunL2q7oAdFmTUjtJXXm0Pig/HcD8JZWtxFAd5qVwgakKE2SDHjBJZpscbm
         ODRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=tKKcJsInlPqpfcFDpQt6bNttFP8cv3zMw+nHpvpdxuE=;
        b=aiw7PIjuxW8WYFhlrNESgkCYjdY0ul6chEqcO38DgAr3MPpK/WlBNz0GazfSh9S7uB
         MNIKgGnDniv99Nr7V4GATpHnpboZuGtxL3GKj2K1ZYzwZKaqpTqqV679Qznl2RfQZJrL
         t7erlV/IH6QEsopN8SIQ+W33h5zUpyq2NNVqacL3SLrK9EjrzTq/bN4+Hh73vVQyJAov
         2TmLQhErzuGgt3fWBKyG5/D/pcP1CMrPAo1iOiTD3SiSo/q9dxsa1VlPSHhm4/LgoizS
         A2s3RE/PA5bxx2oZVN9IH8jy/Z1IU1xvvaOcZMR4hcwbxYBQ+oCKX0pZSXdbdWCxKVn4
         Cv+w==
X-Gm-Message-State: AOAM532wWLR7l1zZH+sx0oARnlJ26SAFMvDj8ptjjagV+vx3xznfyxnS
	VmLmlYh62AxzugcE3Ax16dg=
X-Received: by 2002:a17:902:106:b029:e8:de25:4a1d with SMTP id 6-20020a1709020106b02900e8de254a1dmr26971190plb.7.1618237793240;
        Mon, 12 Apr 2021 07:29:53 -0700 (PDT)
Return-Path: <mitaliborkar810@gmail.com>
Received: from kali ([103.141.87.253])
        by smtp.gmail.com with ESMTPSA id r1sm11410647pjo.26.2021.04.12.07.29.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 12 Apr 2021 07:29:52 -0700 (PDT)
Date: Mon, 12 Apr 2021 19:59:29 +0530
From: Mitali Borkar <mitaliborkar810@gmail.com>
To: Sakari Ailus <sakari.ailus@linux.intel.com>
Cc: bingbu.cao@intel.com, tian.shu.qiu@intel.com, mchehab@kernel.org,
	gregkh@linuxfoundation.org, linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mitali_s@me.iitr.ac.in
Subject: Re: [Outreachy kernel] Re: [PATCH 2/6] staging: media: intel-ipu3:
 preferred __aligned(size) over __attribute__aligned(size)
Message-ID: <YHRZSYmHfXTh/S39@kali>
References: <cover.1618180659.git.mitaliborkar810@gmail.com>
 <f618f1fe2d13417ebed185da392fb48811593a9f.1618180660.git.mitaliborkar810@gmail.com>
 <20210412094315.GJ3@paasikivi.fi.intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210412094315.GJ3@paasikivi.fi.intel.com>

On Mon, Apr 12, 2021 at 12:43:15PM +0300, Sakari Ailus wrote:
> Hi Mitali,
> 
> On Mon, Apr 12, 2021 at 04:38:59AM +0530, Mitali Borkar wrote:
> > This patch fixes the warning identified by checkpatch.pl by replacing
> > __attribute__aligned(size) with __aligned(size)
> 
> Same comments on this than the 1st patch.
> 
> It's a staging driver so even if this is a user space header, it's not
> under include/uapi/linux.
>
Sir, I am not able to understandd what you are trying to say in this. As you
mentioned in patch 1/6, I removed and added header where BIT() macro under 
apprpriate userpace, but what should I modify in this patch?

> -- 
> Kind regards,
> 
> Sakari Ailus
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20210412094315.GJ3%40paasikivi.fi.intel.com.

