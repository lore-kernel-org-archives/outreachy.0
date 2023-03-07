Received: from mail-wr1-f54.google.com (mail-wr1-f54.google.com [209.85.221.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B39DF6135
	for <outreachy@lists.linux.dev>; Tue,  7 Mar 2023 12:25:33 +0000 (UTC)
Received: by mail-wr1-f54.google.com with SMTP id l1so11879541wry.12
        for <outreachy@lists.linux.dev>; Tue, 07 Mar 2023 04:25:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678191931;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:from:to:cc:subject:date
         :message-id:reply-to;
        bh=ObT8KfCfO6lokBSdXOT0yGZ6flD6zNTHnl5Aoi1ltwY=;
        b=Sdn/8E1kOs4qznT6CEOzWq65w4JNZj1AxtDECHsHxkC8BD4S20OUBI8d97kKa7m8Y1
         1OVoLu+TaLkAk73O3D357iJEIN8icTUTgxoyX62TuENKBvAULbwCvGnzjyRoXwip7yE0
         4eoe6ZqyPKgMcT6Zzg3b3J/CDzZMD+JYiiy+ZB0aWhQQHGs+GOXl9PE2aVt+YSFJraxR
         eHcjNlMoyfV5H086EcRJlNOCKCkiLjwp2+wmSXO3/DPZMH0mIHycQr1gIDp6VRF/k7Sd
         HhDFYykDtqDP5EqdqrpNQKH8alQ0C6948WpoVG0uDpXFi417MHnIyvFuKb2A3V8XtMcP
         5y/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678191931;
        h=content-transfer-encoding:subject:from:content-language:to
         :user-agent:mime-version:date:message-id:x-gm-message-state:from:to
         :cc:subject:date:message-id:reply-to;
        bh=ObT8KfCfO6lokBSdXOT0yGZ6flD6zNTHnl5Aoi1ltwY=;
        b=yTEICVcMwgGBT5Z9y2pIApTJbukrbXOE3wefbogMQ0XUuugHBgMTR2hVBNIz50QXnj
         ghU5eoF4kftKiD7KNeCRhJfo4hoYl8kzaZwYSEkUV2mbDkHnMEs9gHFJC7wEXJBhS8q5
         9/YzD/U62fzJQfdRPgsWA4JZccibzFjXWmVdrDODNTZSk4+V5GVliXJg+KhyWS2Dl8YV
         Tv1lPfK+4JNsHiKnch/YNPp4OYUvLE4JcrM5huoLKhPrYwiq465NK79vpadEzypaFLCM
         NKCO6UPTYnf7kCyK9YFvkifvTBYeRdbuniPKhMkBCOK9D2ZEigVz0QO6yLlcFzSPrlD8
         2GHQ==
X-Gm-Message-State: AO0yUKXNvmzZi2jOPZpxXrTk4u1+u3jaM1B/OwT6DNcJ2VIGlHS8VHDn
	pRxfigzcSDm3iK02TDIuQTVepx4ksS6HzA==
X-Google-Smtp-Source: AK7set+2ti8fmj8C4Y96ansIw2HuYCaWZXoDGUz4UBzy64SdaYSFFHUCfklbu1MQScC2xnCNTLNa6Q==
X-Received: by 2002:a5d:65cb:0:b0:2c5:5ec7:43bc with SMTP id e11-20020a5d65cb000000b002c55ec743bcmr12707538wrw.18.1678191931685;
        Tue, 07 Mar 2023 04:25:31 -0800 (PST)
Received: from [192.168.1.16] ([41.42.191.171])
        by smtp.gmail.com with ESMTPSA id n8-20020a05600c304800b003e21f01c426sm12716021wmh.9.2023.03.07.04.25.30
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 07 Mar 2023 04:25:31 -0800 (PST)
Message-ID: <8bbe81c1-a5c3-f481-580a-7f80f9e57dd5@gmail.com>
Date: Tue, 7 Mar 2023 14:25:29 +0200
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
To: outreachy@lists.linux.dev
Content-Language: en-US
From: Menna Mahmoud <eng.mennamahmoud.mm@gmail.com>
Subject: Outreachy
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

Hi there am Menna an Outreachy applicant,right now am working on my first patch. happy to be part of this community.

Thanks,

Menna

