Received: from mail-ej1-f50.google.com (mail-ej1-f50.google.com [209.85.218.50])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C1187B
	for <outreachy@lists.linux.dev>; Fri,  1 Apr 2022 15:14:52 +0000 (UTC)
Received: by mail-ej1-f50.google.com with SMTP id j15so6478898eje.9
        for <outreachy@lists.linux.dev>; Fri, 01 Apr 2022 08:14:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=IQuAc1P8qCNsGG/RLltPpanP4pRVgmtgTunZr2tjQvY=;
        b=LqQZvQJeBj7jLxsII4I/aE/+FA2Z9fISLhgrNpecOwSbK3dytobFoTydO8SDBSdrOD
         xP28oOodIGUzKEcZA17X3BBRT+dYhOwJvk4EAAGAJo+Xt8JeMZyQZGEGh1+5qcuwtlDL
         0KrRyhS6lGUs/gqJapZWHBuM5PvFfooufUa1CKg2vMgQJK7wbrfzhq+v1oHiaLQsxkCY
         M08zurLjg/FTJXlGfQBB3PJSYJbcm5HCPLhm6wYMA3SN88Uo1QGuIGJ4/8k30j8wE6Yp
         1A37+hdJWR8hrNfLQNQ9np7AtqlYfcecKAWaWL0X2kTU7Hy+S6WSWyJjAIARyjiOhxqh
         UQQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=IQuAc1P8qCNsGG/RLltPpanP4pRVgmtgTunZr2tjQvY=;
        b=Yd6s7jbIK143X8H653DKmoisMRQs12xxpcUWaaHlu+cbTc/dC7bERvQwWEU9LPoX7y
         sIznmt759JVBUjAolCoZ/usQ7Wygx+6O1xK2jI/O5NrqNzp89GMyRVkqFRiGElrDoCi9
         zxf/8TpG1vXRe3dvNMf9nqUbKbWhHklbJolwwXDYNVUVS7fqKKylPSKb4pR+ijbkz4CV
         wgPVtSFMWDj8yDgZ1ZnuvY2ye9wrwtc+CeibdYhf+WKmP/celZCAWKRg44WxKNPrp+OB
         0eOyP88jTTv6Bb+NATlO0r+EQmxrLU1awExp0Zj/u+jjNWIjjx1NIVZWK+rbjYeQmOGr
         fPgA==
X-Gm-Message-State: AOAM531wGHZKySCC8yOR/B0zOP0vgJ9qamiEPXL0jxb+S0qXKJNebfyk
	YzIm3e6yKgjUE1ckjlRL1DU=
X-Google-Smtp-Source: ABdhPJyRvKxU4RL1VOiujXC96SQUv8no+2gqpvQRn6tmHzDxOejlJ8kmNs6gJxpFCiaYYYck4lcu5g==
X-Received: by 2002:a17:906:7316:b0:6d7:16be:b584 with SMTP id di22-20020a170906731600b006d716beb584mr210483ejc.759.1648826090717;
        Fri, 01 Apr 2022 08:14:50 -0700 (PDT)
Received: from leap.localnet (host-95-249-145-232.retail.telecomitalia.it. [95.249.145.232])
        by smtp.gmail.com with ESMTPSA id e6-20020a056402190600b00413d03ac4a2sm1341871edz.69.2022.04.01.08.14.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 01 Apr 2022 08:14:49 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Alison Schofield <alison.schofield@intel.com>, Jaehee Park <jhpark1013@gmail.com>
Cc: Outreachy Linux Kernel <outreachy@lists.linux.dev>
Subject: Re: Finding Clean-up Tasks
Date: Fri, 01 Apr 2022 17:14:48 +0200
Message-ID: <17732861.sWSEgdgrri@leap>
In-Reply-To: <20220401142803.GA38814@jaehee-ThinkPad-X1-Extreme>
References: <20220331183805.GA1182645@alison-desk> <20220401142803.GA38814@jaehee-ThinkPad-X1-Extreme>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On venerd? 1 aprile 2022 16:28:03 CEST Jaehee Park wrote:
> On Thu, Mar 31, 2022 at 11:38:05AM -0700, Alison Schofield wrote: 
> > Confidence to send the patch:
> > -----------------------------
> > Go ahead and search on this mailing list for the checkpatch
> > string. You should find many examples that match what you
> > are about to do. See what worked well, what needed rework.
> > 
> > If you have a patch AND a question, you can send the patch
> > and put your question below the scissors line. For example,
> > you might see multiple instances of something but are not sure
> > the patch will be well-received. Fix one instance - and below
> > the scissor line ask you question: "There are 10 more of these
> > in this file, just want to sanity check that my approach here
> > is wanted."  (If I were doing cleanup today, I'd use this tactic
> > for drivers/staging/iio checkpatch ERROR about octals.)
> > 
> 
> Thank you for advice! I had a question about where to put the questions
> in the patch. When you say scissor line, are we putting dashed lined
> somewhere in the patch and writing our questions? Or did you mean we
> should reply to our patch?
> 
Hi Jaehee,

Alison is talking about the three dashes that patches have soon after 
the line with the "Signed-off-by:" tag.

Look at your own patch as an example:

"Change variable name to be consistent with the naming conventions.
ssidlen was changed to ssid_len and ssidie was changed to ssid_ie to be
consistent. This makes the variables more readable. The other ssid
names in the code are separated by an underscore. For example,
bssid_filter and num_of_ssids have the ssid separated from the rest of
the words with an underscore.

Signed-off-by: Jaehee Park <jhpark1013@gmail.com>
--- 

-> Place your questions and revision history here <-

drivers/staging/wfx/hif_tx.c | 10 +++++-----
 drivers/staging/wfx/sta.c    | 20 ++++++++++----------
 2 files changed, 15 insertions(+), 15 deletions(-)"

Regards,

Fabio M. De Francesco



