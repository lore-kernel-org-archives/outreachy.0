Received: from mail-wm1-f52.google.com (mail-wm1-f52.google.com [209.85.128.52])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A5CC2CA5
	for <outreachy@lists.linux.dev>; Tue,  7 Mar 2023 09:48:38 +0000 (UTC)
Received: by mail-wm1-f52.google.com with SMTP id p16so7328404wmq.5
        for <outreachy@lists.linux.dev>; Tue, 07 Mar 2023 01:48:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1678182517;
        h=content-transfer-encoding:mime-version:user-agent:date:to:from
         :subject:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=2SEtvvn6nHMU3FwtI+bkS1cjxQ4/TabgY22W6xnnrZM=;
        b=V0gUMs0kJGAsCzzzff0q9AWbGumXKDVXmUZqKa13ED+f7m5KKPtlNODqAfbpYv/evM
         AZ2Dh/4Yg9Y+gH8XiGW6v9UcJm1G5U4jhxbRSS7oYj+AtyOG3V/ZyhjGTOoI3EhEd5DA
         XyTK3jS2jbIzWKmwKK+NqQ7ozzBebh1/M0eaFKng/CM4EDRh11Ds5WZSLNB1u4kMmsRF
         B0Ywig5WdReK9nsahZosEtPjR/qmYorNISNFzlzD10XKxGrBiugevHsr8Eh8/Mr5OBs5
         euUu7KB8mNbczVRoUG19/4OfqHmXRbRcwZTOWzHSJQogjnhiLGftHAWKdf/brVQIQfIW
         Wycg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678182517;
        h=content-transfer-encoding:mime-version:user-agent:date:to:from
         :subject:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=2SEtvvn6nHMU3FwtI+bkS1cjxQ4/TabgY22W6xnnrZM=;
        b=UIII21Gb1Sigx+2c8wGiCm0u/StjW1b6E9nQsiMVa88lCKWIFO92QkKzfllRyUzTAc
         6ViYJRRybWIzXnTzzQv4Q6Tsee94m9pfB7TV6ErT8Q+7Mc8LkHWFhH5/0NY24kPK63o/
         6rlIdTnnHI7/FxJhb7/Or8mRdlDZE07mYVOONkgYFrRRCu3HUKga3FCZ0adkcTc2NFq/
         DOhgaUbRACD6xrHGye0skMuVpVtz9CemLcJQMGjoyT7M1/+PlYNWP6oMn1mT7W9RvDuz
         gCwyzpBx5Uwy/nnd1V68P912ruITppuU+tkDost/hHZGvhbZZpNrVaIJshwVtUfoZDzK
         ea7g==
X-Gm-Message-State: AO0yUKX+TAsNssMdJkQ95uBiuDufDogqPJxeyLie8CtKbJuA4MlByxEZ
	0RlgW6aoxssEYDZOIBdQRdZ/doDVueVQiQ==
X-Google-Smtp-Source: AK7set9+LwnAzjp7i/YGlAFRc0egkk9VHZvrwpHuzd0jylneOJb90228fBszsMzeqdifNxvtSoiN3Q==
X-Received: by 2002:a05:600c:348d:b0:3eb:9822:2907 with SMTP id a13-20020a05600c348d00b003eb98222907mr8845655wmq.4.1678182516918;
        Tue, 07 Mar 2023 01:48:36 -0800 (PST)
Received: from derrick2021 ([197.239.12.79])
        by smtp.gmail.com with ESMTPSA id m18-20020a05600c3b1200b003db0ad636d1sm17750119wms.28.2023.03.07.01.48.24
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Mar 2023 01:48:36 -0800 (PST)
Message-ID: <ce2f4841a169f9e944184f8b58775ed28936142f.camel@gmail.com>
Subject: Introductory Message
From: agabaderrick18@gmail.com
To: outreachy@lists.linux.dev
Date: Tue, 07 Mar 2023 12:47:45 +0300
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.36.5-0ubuntu1 
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

Hi there am  Derrick an Outreachy applicant,I'm happy to be here.Been
reading through the archives and learning alot and right now am working
on my first patch welcome any correction and direction as a way
forward.
   I. Thanks

