Received: from mail-wm1-f53.google.com (mail-wm1-f53.google.com [209.85.128.53])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274D8C2ED
	for <outreachy@lists.linux.dev>; Sat,  5 Aug 2023 16:30:22 +0000 (UTC)
Received: by mail-wm1-f53.google.com with SMTP id 5b1f17b1804b1-3fe1fc8768aso30352345e9.1
        for <outreachy@lists.linux.dev>; Sat, 05 Aug 2023 09:30:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691253021; x=1691857821;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=wo3w1ApZWKuGrSbea348OXXQyWwZNwJbQdm22ZLzFNw=;
        b=psXjkU5aini3wj8lH8+MxUkfwJV8N46+ihZJooo6e5bIxjYd75ezU5aK5g4jRax7X4
         Qh0fPAtqmBIf0Nc3L7rRgFylqa8Ja46C5Al7FArOTX45Iz+3V728cZWrllsduCsNSstJ
         36E6bNPWXoliaMLizKfRSyV234cA3vU9dfeaZ4ErbI+dge4DDmz464eMhT0uKERdce1N
         Zq3cBRKBDNDYUeaa3LRgi7XryIR78jxnf1BKoePFbUSrKBfpQBbvEtIxf7IgaO9FjMhY
         3PLfjNi3tadNIWzlAl9IZbl3YKEdojRjWOL0IxSpJGR8Ppedlv8ODodi4PCEkhpGxQt+
         USDQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691253021; x=1691857821;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=wo3w1ApZWKuGrSbea348OXXQyWwZNwJbQdm22ZLzFNw=;
        b=bZl+uazJsvWYoaeTaMf7UYkPLior0eLHhHJTOCW5kO5iIrrHeE5J3AXpclnphhgVXY
         QOf1KfBeOYktu0/1RUt1IiMfPJVBSkbTdxvcQ3dNLdaJvNtf4ZYX18q8FiJPP8bY5fI6
         Ajx8QKZ97zJ32IywTSeOYHOEPHJMs7ybnoptHTpRT+if1iQAcd7kijv0l+T041csL1CA
         HFURnetD9NsO6b1af+2Mn4nOm8HpdxL2jbghKFr/SYR4Hfo+QFQTDq+25lICgFYwmsuq
         yUxZnEAsrvVcjEDPg4MNycVDWujMrBZREmTMsUC/RTPRoYFrDPtms6eMml1Jd23c5oXt
         QoAw==
X-Gm-Message-State: AOJu0Yz4nUNqxtn/uY2DaHHnBYXBeqvgBi8pdeqfoZQ0qBYP4rQxyNRO
	oC/ZHvT2htgO48UbxNaoxBpxkg==
X-Google-Smtp-Source: AGHT+IHrWXCvWbLCzmTGkjlQNcKl+Sj87RrTsEekUpleiD6eEbMOGwg9ato0FbdfU04+tuslEQMg/w==
X-Received: by 2002:a1c:6a16:0:b0:3fe:2606:84a4 with SMTP id f22-20020a1c6a16000000b003fe260684a4mr3943676wmc.34.1691253021116;
        Sat, 05 Aug 2023 09:30:21 -0700 (PDT)
Received: from localhost ([102.36.222.112])
        by smtp.gmail.com with ESMTPSA id a5-20020a5d4565000000b0030647449730sm5486104wrc.74.2023.08.05.09.30.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 05 Aug 2023 09:30:20 -0700 (PDT)
Date: Sat, 5 Aug 2023 19:30:18 +0300
From: Dan Carpenter <dan.carpenter@linaro.org>
To: Pavan Bobba <opensource206@gmail.com>
Cc: Forest Bond <forest@alittletooquiet.net>,
	Michael Straube <straube.linux@gmail.com>,
	Philipp Hortmann <philipp.g.hortmann@gmail.com>,
	outreachy@lists.linux.dev, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] staging: vt6655: replace camel case by snake case
Message-ID: <247b9239-bd87-40ab-a0c7-18883cad2268@kadam.mountain>
References: <ZM4PWL55pMQiYIX6@ubuntu.myguest.virtualbox.org>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZM4PWL55pMQiYIX6@ubuntu.myguest.virtualbox.org>

On Sat, Aug 05, 2023 at 02:29:04PM +0530, Pavan Bobba wrote:
> Replace array name of camel case by snake case. Issue found
> by checkpatch
> 
> Signed-off-by: Pavan Bobba <opensource206@gmail.com>
> ---
>  v1 -> v2: 1.character '_' added in the array name "byvt3253b0_rfmde"

You never actually added a _ character.  It should be by_vt3253b0_rfmde.

regards,
dan carpenter

