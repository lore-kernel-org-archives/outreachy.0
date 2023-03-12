Received: from mail-pl1-f182.google.com (mail-pl1-f182.google.com [209.85.214.182])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9AAD41FA3
	for <outreachy@lists.linux.dev>; Sun, 12 Mar 2023 12:29:33 +0000 (UTC)
Received: by mail-pl1-f182.google.com with SMTP id x11so10108541pln.12
        for <outreachy@lists.linux.dev>; Sun, 12 Mar 2023 05:29:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678624173;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=+HJAKwxa0LTIxf/jS5qz7I0wr7v3E9TmkJGVNqOdnH8=;
        b=IaGALuLD0ftMp3ooa36/y3f2ayNf5Fy2Q/Jfs5pSDpp1wJ8vp4UE8evBDAWkA5ylzI
         ozTRh8VOLVRfUKM+8Nno/GO74/cXIIaqGtXZRoFIatJSGoC5YmitMEDbmGVJ3YrueW8g
         OEIvrgqOrd5aBDz0CjHI7QoTyjy08gtSb8KoOvnWzCvSkn/H00wQ1S3Xi5hpG2HxgqiW
         JhsOqsxgREDzb9zmNabl9sZhf4egnsxXNLkET1mAixUt9zmWXl7Ypi+GCEPd0BE02UGs
         mzNeOKAiaYkkyf1/I99sgg92wIAnVWISazs/jresysvn/acCf9Vdyrehhny4WBbByTd3
         tXdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678624173;
        h=in-reply-to:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+HJAKwxa0LTIxf/jS5qz7I0wr7v3E9TmkJGVNqOdnH8=;
        b=5Ga6esxmcRzrJaVn+uQyrzmv65oVjvaAvUUTqSDHUysXx91WqzmQuOzDi5xhhOzWF6
         uty2jOAko/pejQB8WGKiWXj60cvm4zD1mdo4q98COm2vhv7MU7CR64vpnK7h5vXkDSz3
         fFFFUchoFnxfrxboAe4nW/DedcSFo2pwe1EIaDMkiKIZCZ3L5wjhugyZT1yxkx3i9AGb
         Xa6BVainhxeZaZDVLX4TM813QjzEHIWH9vjx8d6efiyvZeHQP9f4ra2LGna8oB3oKcGr
         PGkYOvXYpfgyMwTcNLuL9OHSsFommfknt5fbdTdrGqgj55XSpTs86yRJ0Aw78G/ibFOq
         UopA==
X-Gm-Message-State: AO0yUKW5arOslcCDv7VeDpxCGfbatQtkNsxP6/xMcwRbqZhgmLMzjR83
	6f/BcFibgUaZMUlZo9cb1XO7Fvfyg663bQ==
X-Google-Smtp-Source: AK7set8w561X3If5EV+1KAJvc1mf0rEUgcV9hWtU7xKjML9VDC7N9m10DD/yHKOIteXp2ZrsH7JuzA==
X-Received: by 2002:a05:6a20:4f89:b0:c0:c905:7b09 with SMTP id gh9-20020a056a204f8900b000c0c9057b09mr25876594pzb.44.1678624172667;
        Sun, 12 Mar 2023 05:29:32 -0700 (PDT)
Received: from ubuntu ([59.89.166.125])
        by smtp.gmail.com with ESMTPSA id v184-20020a632fc1000000b005030113f46dsm2827633pgv.37.2023.03.12.05.29.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 05:29:32 -0700 (PDT)
Date: Sun, 12 Mar 2023 05:29:28 -0700
From: Sumitra Sharma <sumitraartsy@gmail.com>
To: julia.lawall@inria.fr
Cc: outreachy@lists.linux.dev
Subject: Re: [PATCH] Staging: qlge: Fix indentation in conditional statement
Message-ID: <20230312122928.GL14247@ubuntu>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2303120843420.2865@hadrien>

Hi julia,

>> Hi julia
>>
>> I was referring to the reply you sent in this thread and asking to quote
>> the most relevant information in the mails so that people on the list
>> can know what is being discussed. And I will take care of this in my
>> upcoming mails.
>>
>
> Sorry to press the point, but you should be doing it now, not promising to
> do it in the future.
>

I am sorry for repeating my mistake again and again and may be this time
too. But, I am trying to correct it.

>
> If there is some challenge in doing this, please let us know, and perhaps someone can offer some advice.
>

To be honest I am struggling responding inline. Right now I did it
maually by pasting your message into mutt and putting the ">" things. I
know this is not the correct way to do. Please guide me to the correct method of responding inline.

Regards,

Sumitra
