Received: from mail-wm1-f43.google.com (mail-wm1-f43.google.com [209.85.128.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F024B4C97
	for <outreachy@lists.linux.dev>; Sun, 12 Mar 2023 15:56:28 +0000 (UTC)
Received: by mail-wm1-f43.google.com with SMTP id d41-20020a05600c4c2900b003e9e066550fso6355610wmp.4
        for <outreachy@lists.linux.dev>; Sun, 12 Mar 2023 08:56:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678636587;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=fVbw4WVluY/AhLzdB99TxIxd4ivwkD16i3PFcd6wkg4=;
        b=mg0pv6ONJc70Qn7wGlK08wmD3B/gcQvSMUVrnjXBlhzh5KOVCW0tEkkdsTZJlKm0Qe
         zxwM8g6kNmcBRK6dTcYqQCpY6zFhgk2An4kSZD/8LG69xt0K+fpWPmzQ7bh4aiYte0tt
         RwuEbizzJ4iW07Y8e9V+1yOcaY0E4BYLGZPZ2VXSSbcANreaeJ1n+f0QBlSRnDGMGdWA
         yezgKcA4oTN3TrHckNXrZ2y9rjbg9MpgHT+UxBlrEf902a0uu7xEeOcl7XrGXVNzOOeS
         tcKG+nfCxRDQnYs2oMdeJNgSYME8kRb3fq3em4W8IqZqZ80ZOZApFfFVZxxvXPXSqVLG
         bUpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678636587;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=fVbw4WVluY/AhLzdB99TxIxd4ivwkD16i3PFcd6wkg4=;
        b=sv3Q4HqI6P4dcglNVz/tfVZ9+bqlRCenN7mSVnF7EEOTAoGsBrDm5wg954YVLjwRyt
         zwSNbAKgYzYOc571moBq/kHGlfr1Pna90f5oHirj43W4E9rqfbDp0SqHO5XJ/1C2rzDP
         5wqOuKYTXdw91LuBT5XjyBqD7mqlerBxFchnAa7pBx9mFW4OjBZi8amC8fuswNKP+YHN
         bEo7aw73/NBDE4EN52GutUPznFs5lDVgMvs7DciuHJVU2ykzP7T3LOFan/fwbyDQXpX0
         j/qYqxddB1pxEIHN9hwQeoBsDrKzNy8kak21MtyFU0XTri7nb2TLHHmQrOUvPvkYnT9A
         ayDQ==
X-Gm-Message-State: AO0yUKWd6sLdGZQoAdkqdvdwfyqt3aY7kg5UXwyMtJ4WmVYSU6PiJlm2
	C+lEKudzh9FG5riDWeU67Sam1uHB7+CRpEf/
X-Google-Smtp-Source: AK7set8zoo+oatIaZoYOkS2T4D4pH+oqum5wfXJQvwjkqhk2ALrdysvLh6KPr/cAewJTE3aH1oP5ig==
X-Received: by 2002:a05:600c:1c28:b0:3de:1d31:1042 with SMTP id j40-20020a05600c1c2800b003de1d311042mr8172731wms.23.1678636586893;
        Sun, 12 Mar 2023 08:56:26 -0700 (PDT)
Received: from khadija-virtual-machine ([39.41.45.115])
        by smtp.gmail.com with ESMTPSA id d21-20020a1c7315000000b003dc521f336esm6377712wmb.14.2023.03.12.08.56.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 12 Mar 2023 08:56:26 -0700 (PDT)
Date: Sun, 12 Mar 2023 20:56:24 +0500
From: Khadija Kamran <kamrankhadijadj@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Sumitra Sharma <sumitraartsy@gmail.com>, outreachy@lists.linux.dev
Subject: Re: [PATCH] Staging: qlge: Fix indentation in conditional statement
Message-ID: <ZA32KCmxGEM8jVwl@khadija-virtual-machine>
References: <20230312122928.GL14247@ubuntu>
 <alpine.DEB.2.22.394.2303121412090.2865@hadrien>
 <20230312152701.GA28100@ubuntu>
 <alpine.DEB.2.22.394.2303121631170.2865@hadrien>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.22.394.2303121631170.2865@hadrien>

On Sun, Mar 12, 2023 at 04:31:48PM +0100, Julia Lawall wrote:
> OK.  Was the information in the outrechy tutorial sufficient?  If not, it
> could be good to extend it.
> 
> julia
>

Hey Julia!

I thought I should reply here too. I hope that is not a problem.

I had a hard time configuring mutt, from the information in the
outreachy tutorial. I could send my patches but I had no idea how to
respond to mails from INBOX and how to send inline replies.

Regards,
Khadija

