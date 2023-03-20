Received: from mail-pj1-f41.google.com (mail-pj1-f41.google.com [209.85.216.41])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BD11383
	for <outreachy@lists.linux.dev>; Mon, 20 Mar 2023 08:59:45 +0000 (UTC)
Received: by mail-pj1-f41.google.com with SMTP id h12-20020a17090aea8c00b0023d1311fab3so11635960pjz.1
        for <outreachy@lists.linux.dev>; Mon, 20 Mar 2023 01:59:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1679302784;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=lQRpt3cW3NIG768y8UGXLQ+jlO4UY3e2amI/L0mQT8k=;
        b=TxeGMT6BdEGa13d+71yJe5CkxzWWzwXBNq00XTeUrWkW00Fo3pOl1IyBME9C7phvvd
         c0Ph09YtZ7/5T70gdu6tUnY5uCnJzmlBjZzXaaKarWUdJgE/lx8DAkg6hTx7qA2QVR2X
         Lp5Wf9m46N9Q9fMC80korTcUYAT2g5sHB7zDd7+doHu9hLVT8i6e4KkkSpvPMjJS/F4Q
         RCuz9Lu7bCaOoKIh8sj0xUXGWqzlAPdP0nNRzb38dWU1Uwp1EYqEOkxtVQ3uX/AM+xBc
         +44a7iUE4oemRjq3q5dh+7agP2+R8DJ/Igjsjss0/jeovz0VOZVHCtXoSfpeLchYuSt2
         vJgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679302784;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=lQRpt3cW3NIG768y8UGXLQ+jlO4UY3e2amI/L0mQT8k=;
        b=5ZgMttingZ+P8R1kD33SjOFKLIApMzu8fdzMu/sQBptkEjEvELTbtT7T8ZAbUibwQS
         87NrVzojqdMHkdwS/RoMd6EJVZnpFNU/RgBlK/2hcsXt3WQMFT7kzBU5ytT/m/6nb5mx
         UwaeOGZ3BdhqMH7EQZdPLIjTTl7ZrJ84WPI2H8JPrFkGDjcOnztxbgpv7GTPiJqZ+a2P
         QdW4CLmmiU4d2s6n+5XW+K3f8JzPVsU+izB9bpK7XUVbLBXZ99hLCurTYae0Xw8WHNPG
         D2YOVbGJOk7s9kyToS46iMnctaufGePMw0eYciq8MSqT3qssjiPLIET0Hupj+wDUDRSp
         zVaQ==
X-Gm-Message-State: AO0yUKXpreK68CE444RhEazRcpjC8yWYsBDlnNpLFkx7XGMAfRzFJU6j
	b8R+CKPymEZYXkShfqUYvA4=
X-Google-Smtp-Source: AK7set9z0JSd0EGeoIbIN03l93K5BiOa0DVxdiDkmhMvSDBuYzVyMzdvPcRylPej8w9w1xANZtRqJg==
X-Received: by 2002:a17:90a:1987:b0:23d:870:5244 with SMTP id 7-20020a17090a198700b0023d08705244mr12583551pji.13.1679302784558;
        Mon, 20 Mar 2023 01:59:44 -0700 (PDT)
Received: from [192.168.43.80] (subs09a-223-255-225-69.three.co.id. [223.255.225.69])
        by smtp.gmail.com with ESMTPSA id w23-20020a17090a15d700b00233b5d6b4b5sm8997077pjd.16.2023.03.20.01.59.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 20 Mar 2023 01:59:44 -0700 (PDT)
Message-ID: <a81b11ef-f77a-6c26-09bd-63214a1df5b7@gmail.com>
Date: Mon, 20 Mar 2023 15:59:41 +0700
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: Unable to find module location
To: Sumitra Sharma <sumitraartsy@gmail.com>,
 Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy@lists.linux.dev
References: <64997a6c-24f1-d551-1b87-735a699e4a8e@gmail.com>
 <20230318124937.GA39892@sumitra.com>
 <21c2da25-22cb-cbe7-153e-067377de4723@gmail.com>
 <20230318175746.GB49651@sumitra.com>
 <ee140dee-6db9-6d7e-0b84-b69f3c36cc13@gmail.com>
 <20230319083256.GB50179@sumitra.com>
 <alpine.DEB.2.22.394.2303190938080.2867@hadrien>
 <alpine.DEB.2.22.394.2303190956120.2867@hadrien>
 <20230319121026.GA53959@sumitra.com>
 <alpine.DEB.2.22.394.2303191336090.2867@hadrien>
 <20230320084630.GB126429@sumitra.com>
Content-Language: en-US
From: Bagas Sanjaya <bagasdotme@gmail.com>
In-Reply-To: <20230320084630.GB126429@sumitra.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 3/20/23 15:46, Sumitra Sharma wrote:
> Hi julia,
> 
> This did worked.
> 
> But the main issue of creating NVEC_PAZ00 a module using make menuconfig still persist.
> 

Oh dear, you don't know how to use menuconfig...

When you execute `make menuconfig`, you'll be presented with menu when
you can choose what config you want to enable. To find the desired config
(NVEC_PAZ00 in this case), press `/` and type in the config name. If
found, you will see menu location for config symbols that match. Then
follow the shown path.

Thanks.

-- 
An old man doll... just what I always wanted! - Clara

