X-GM-THRID: 6399695110711279616
X-Received: by 10.46.69.133 with SMTP id s127mr1393870lja.17.1490048786604;
        Mon, 20 Mar 2017 15:26:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.125.137 with SMTP id y131ls427568lfc.24.gmail; Mon, 20 Mar
 2017 15:26:25 -0700 (PDT)
X-Received: by 10.25.199.66 with SMTP id x63mr3734989lff.4.1490048785104;
        Mon, 20 Mar 2017 15:26:25 -0700 (PDT)
Return-Path: <alexander@alemayhu.com>
Received: from mail-lf0-x233.google.com (mail-lf0-x233.google.com. [2a00:1450:4010:c07::233])
        by gmr-mx.google.com with ESMTPS id q207si983958wme.3.2017.03.20.15.26.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Mar 2017 15:26:25 -0700 (PDT)
Received-SPF: neutral (google.com: 2a00:1450:4010:c07::233 is neither permitted nor denied by best guess record for domain of alexander@alemayhu.com) client-ip=2a00:1450:4010:c07::233;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@alemayhu-com.20150623.gappssmtp.com;
       spf=neutral (google.com: 2a00:1450:4010:c07::233 is neither permitted nor denied by best guess record for domain of alexander@alemayhu.com) smtp.mailfrom=alexander@alemayhu.com
Received: by mail-lf0-x233.google.com with SMTP id z15so60967337lfd.1
        for <outreachy-kernel@googlegroups.com>; Mon, 20 Mar 2017 15:26:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=alemayhu-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=Qv91y1qZyIjVLf33k5382sktEs8PBWy1kNcvi8zVP4A=;
        b=0u0D07Vrl4wlOQo0jJ3uzB+phu+XZ4XRyZJAEkXvkIeyxGs9gmELnzHxilwE41UvfK
         z1fPFma441y7lDtd5wPE68nRqNEk8i6JaBP7TWyFq0bDwkrwYrvQMpa+fxhxQukHoIuj
         AuKAciPDel32Oe6DnrC49XM6bbWSPAaZmY3pUVagKz0lgfArtDmysomi6fpCWB2MyVpH
         t9ywozQof8Xk8FpKBJ/mPBmNjq/jTj/rNywgPh8eBaNRe80+9Bn4VqS6EDGi5Vk2Piz9
         QQmKSsV7ve+hmWLsR5JFD49+QzVMH+SZlfbAReE3UDhjqVS9AzDDA0wFy8FRnHZKRT3A
         PIyw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=Qv91y1qZyIjVLf33k5382sktEs8PBWy1kNcvi8zVP4A=;
        b=qyZ2CR2VmybhvFPeVvMA9Fax/DWVnAGUiPxODfbhAIAE6AbbPrpsxwxBwKTqA3+r04
         TC188Y6kgQYmUlmcOX+2s/CI8ZegDmktZ1YuxuvyuL5hOT8F9IJ2PBMtzOv5niy7IhAv
         If9HOBrll9O/03FB1hNgpRuexxzp2wVTn4F8xqFyWlxb9e214S5A+hyJTi5gGf5wwcDH
         qENOug/lbCVsijPN+fgrFcA62QiXFumrXtzBW4aZFI29sMPOAldBXgik6hmhX9c59rbs
         X3U1s6eSE1dNCowCYqSV8HaQqksM3pEdyJDn73oUuqnE175KGTUOLUe1ZdtO/VgIQlwf
         jeHw==
X-Gm-Message-State: AFeK/H0f1mE3BCnt9bo+t1FfJr8YARXEiisTcLyY/e+bB8152ryiaxJflbGfFRK46fISaA==
X-Received: by 10.46.80.24 with SMTP id e24mr2411537ljb.29.1490048784765;
        Mon, 20 Mar 2017 15:26:24 -0700 (PDT)
Return-Path: <alexander@alemayhu.com>
Received: from localhost ([2a02:fe0:c020:790::5])
        by smtp.gmail.com with ESMTPSA id f28sm3195397lfi.52.2017.03.20.15.26.23
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 20 Mar 2017 15:26:24 -0700 (PDT)
Date: Mon, 20 Mar 2017 23:26:23 +0100
From: Alexander Alemayhu <alexander@alemayhu.com>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] nftables task question
Message-ID: <20170320222623.GB3079@gmail.com>
References: <CAKG5xWj2WBS4MiOdgcdatnHMkgdsBATKtgr_h5=sQPgrnOyBvA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAKG5xWj2WBS4MiOdgcdatnHMkgdsBATKtgr_h5=sQPgrnOyBvA@mail.gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Tue, Mar 21, 2017 at 02:54:50AM +0530, sayli karnik wrote:
> 
> The project description for nftables lists translations to nft as a
> possible small task. I couldn't find the files to work on. Which tree
> accepts patches for these translations?
>
git clone git://git.netfilter.org/iptables
cd iptables
git grep iptables-translate
<make changes>
send patch to netfilter-devel@vger.kernel.org

-- 
Mit freundlichen Gr��en

Alexander Alemayhu

