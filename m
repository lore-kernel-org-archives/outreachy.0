X-GM-THRID: 6672748553677307904
X-Received: by 2002:a25:6cc6:: with SMTP id h189mr1548591ybc.13.1553711131224;
        Wed, 27 Mar 2019 11:25:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:4c4:: with SMTP id 187ls7369211ybe.11.gmail; Wed, 27 Mar
 2019 11:25:30 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzd14mepFrwiRaQzCrFawwK6yLtD2tIAguu21ncsxFaoMPH5ZeqyBItC4tzaw7906xSINLA
X-Received: by 2002:a25:6cc6:: with SMTP id h189mr1548584ybc.13.1553711130753;
        Wed, 27 Mar 2019 11:25:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553711130; cv=none;
        d=google.com; s=arc-20160816;
        b=QmQN+sTjXIwp+EUSeMHDZFemP8nNC7z09P0xlH7dT5YgWHYFZeClTSy0eakcN0dwaE
         q4e1V3spRLqFSrAnVFbF08pzQY98B/P4aKAB3kuY3sIYvVeqF7siBNDuexoY7U5CRB09
         ON4uw+5DMKrriJoHCfOoFIfDhSigeiDWakoWZk35tJS4+bVb3LCHxjLuQXTB3Kc6bl85
         iFFU5nowaXVkhGqNCmL/E1vhdhgoQtk8Ztc9n31xBOMjhOVhzdswVH9wxSNkcZqfqGT2
         8bDzgUrc8I2uehwnCgSX5UMoKxxuCzrHlVmrl4/XzfpRp1O5cisw+3V11FmOL4imbLIn
         ZN5Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=GEHNu3b4QJNVjn1rqNOWoN45krc9hTMoTDQWxyVFTd4=;
        b=ItoaNKxJ9ZrqAbdkQzXuDPD3QYEGhdg5wcTbM6fTHFZD4YVoBe9sElLjDEmxtW5aEE
         JsMfAfQbB8JI2BDpfhob4Dajy2qaUs7b/NkUWm3cEaRX9ew1CrKD9dlCWUaMKm7A9eMR
         75axSoxH1KodKbE9TssgnMHvya7jSwO8pBManA1FNP1RJk/5H/GKUeZ50e4pag67oWc3
         69iGTDOZEG8ipc5tQ3kQxP6SL0aDci+AFRBKaSLLT4jfcRgw929YapbA3uFACT0yZ9np
         dqo7FnpnDdwfBSF1ejK1iVFOtl2/0Ndzf4vWOzQmFQmKML4NEZxFcytuZHzdIWE+4u4f
         NSOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=19mwepoa;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 126si283592ybo.3.2019.03.27.11.25.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Mar 2019 11:25:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=19mwepoa;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [88.128.80.233])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 3452820651;
	Wed, 27 Mar 2019 18:25:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553711129;
	bh=dgFnch+aJdOYJ+SJ0UaVdU1NI6sGjUvU5PaRu9QfcmQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=19mwepoaHzwCR/pRDOeagrOu2SFHHOAZe0ntGNximaPhfPAGCT9ta1d9vUooi+dSs
	 ANX9Msx7YawBBZgxi9EMMjo2+nTYcveg8CoTXWZw5rchQs5KwDojy84CaI4TryZFlM
	 R+8XDSE6jsMgHjq8K5Lg6JHhfadHmm2nH7NtJdbI=
Date: Wed, 27 Mar 2019 23:33:23 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: rtl8192e: Adjust the space around operators.
Message-ID: <20190327143323.GA2223@kroah.com>
References: <20190326171208.20087-1-sanjana99reddy99@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190326171208.20087-1-sanjana99reddy99@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Tue, Mar 26, 2019 at 10:42:08PM +0530, Sanjana Sanikommu wrote:
> CHECK: spaces preferred around that '<<' (ctx:VxV)
> Issue found using checkpatch.pl
> 
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/rtl8192e/rtl8192e/r8192E_phy.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

This patch does not apply to my tree at all :(

