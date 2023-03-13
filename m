Received: from mail-ed1-f48.google.com (mail-ed1-f48.google.com [209.85.208.48])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2275D2F32
	for <Outreachy@lists.linux.dev>; Mon, 13 Mar 2023 20:37:01 +0000 (UTC)
Received: by mail-ed1-f48.google.com with SMTP id h8so10047341ede.8
        for <Outreachy@lists.linux.dev>; Mon, 13 Mar 2023 13:37:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678739818;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8bUH0oeEbOulUa11glho7lCXPyKDSytnksRnnpMNxq4=;
        b=OxbHmi+WeC9eINLXv6R9qDLhQqEahbog8PSBa+iBTqjy+Jo2Ll0ZdhdAQZ4kQHxvgB
         S3EkesA8HzwZ8l+B8NuPmyDv6/0nD1lyeRZRRLAngeJpjau+12ptpTGiOIyX4odhnuT7
         kUt9JEXmz0jZIeLj76X4hQvnX464YRqOvHRYmswmkT6slE+wmIjWPhKohkCoSQWnLuE0
         nKV9A+E3hXte4b1EEAWsziyemT217P2crvUevR4L7bOcolDTn2DL+EVm4ouMM5uQPtoY
         ZzKCk5kkMJs/Qa0H67IZZY0il2x8h5X7ngL9VptPYNUUhuuZxTZTypcNJuGzYMOFd3DO
         rUoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678739818;
        h=content-disposition:mime-version:message-id:subject:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8bUH0oeEbOulUa11glho7lCXPyKDSytnksRnnpMNxq4=;
        b=36ZbyI/1keAsHq3KfeDRJF6o4JX9hW9+GgwjLzROEX6o2SXuCuZ2wkvLSaMPo/7oEW
         YmIPq+5SiGlTkSf1MvkwHrLMrrnAPQb/vqEKGIylBWd133nguBZj7ReuiYiKzXiEsa6X
         Hitoqk+Kw73XVbFLGodw1nRSdtgjL8TzzWqWQAJBZ4RWSqcjkaYpBrHqzyC9FD9dFIpk
         K5SVh446kQvef9oO4gtWL8wMLh+T7GKKJR66qlUbznMMvWtjiRGUNMFJOAAIHfwD9cBX
         iewhatS09nrvoDM5mmvFOAcTGHajzeZSe78FFJVhH6OO7FciZsvZgKnHTEu5reln/CdZ
         7Nmg==
X-Gm-Message-State: AO0yUKVKjOuqP+by9e1bGJE21PqKV7NeVXqgH7KHPepRAnTTXpZKQ2nZ
	GUCzYk505wrHzHZwfAD3rQ0uIlHrnnLtVpfd
X-Google-Smtp-Source: AK7set8bPHoIy9bISjQVqjuyXb2dfzXXNwPZTrWgqPGxPAApX9m7KW8tl1egCD/2n53BwW0a+Xfj7Q==
X-Received: by 2002:a17:907:6c16:b0:8b1:7fe8:1c38 with SMTP id rl22-20020a1709076c1600b008b17fe81c38mr36454606ejc.43.1678739817989;
        Mon, 13 Mar 2023 13:36:57 -0700 (PDT)
Received: from khadija-virtual-machine ([39.41.45.115])
        by smtp.gmail.com with ESMTPSA id f8-20020a170906138800b008e3e2b6a9adsm212831ejc.94.2023.03.13.13.36.57
        for <Outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Mar 2023 13:36:57 -0700 (PDT)
Date: Tue, 14 Mar 2023 01:36:55 +0500
From: Khadija Kamran <kamrankhadijadj@gmail.com>
To: Outreachy@lists.linux.dev
Subject: Record Contributions for Outreachy
Message-ID: <ZA+JZ7TTMmm3K0Y5@khadija-virtual-machine>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi everyone!

I am an Outreachy applicant and I have so far been part of this
contribution journey under the guidance of mentors. 
As you all know that we are done with the first week of contribution
period, should I start recording my contributions to the Outreachy
website, or is it too early for that?
If I should, then kindly help me with the following questions: 
 - what urls should I use in order to record the contribution?
 - should I only record the merged contributions?

Thank you! :)

Regards,
Khadija

