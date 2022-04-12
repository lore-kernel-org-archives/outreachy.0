Received: from mail-ej1-f43.google.com (mail-ej1-f43.google.com [209.85.218.43])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34C0B33C0
	for <outreachy@lists.linux.dev>; Tue, 12 Apr 2022 20:21:37 +0000 (UTC)
Received: by mail-ej1-f43.google.com with SMTP id p15so39550919ejc.7
        for <outreachy@lists.linux.dev>; Tue, 12 Apr 2022 13:21:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ur+OWHUGWEbMRv2ttOOZuXAEW1+GSnrhl7X/pesBgnc=;
        b=kmnOT5BrwJE3EV8Xo9t+FxFCA/Z+gl2AgNKWXgdMno91do52U2VXr0xRncUlR5dpio
         ZbedNUeSrD8Cx4dwxd7++PSvVXWyAJpFzfEEjHMlAaXvi9HxoUScEl226hS7dC0oMU/d
         FqQsG11yiiSzwKTMYQfY1lH6hvtfa8h+2naV6nvIlgh2zIx74H0zS6N0wPXI8VMQh4D+
         yNkB13TbwjaGTbaSVqJ5eY7mMrcfgbEhZZ50X3nTGe+xM6oPNQgJXVlgYeKaAb3oPMml
         ZJrqQM4GjHM0VhTHep4g2rzW7x1+FotV5m8jcJHAhhPO2JiyUZIKZ/tAm2ed98BaDnRk
         ixVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=ur+OWHUGWEbMRv2ttOOZuXAEW1+GSnrhl7X/pesBgnc=;
        b=I7q+A0mwhv5tXLE25TZDjlI5hsiZaAQplzxNdp+eTy0uSXbZxVRVE8UXP/R8XV3UGe
         IYmgbFC50h+mDkIXcMpL2MnEMDU+s/4Ktk0IBForH8TF5IFvTUbWLnrYs0s8wDmI5VIU
         KTx8yqEL6+ip0Wcr2Vop/ITovXlzYt4ceBmjAkETA9yP23vScc2AvCR6m2cOunevAV5j
         fWziFWe1hlrSo+z0PfIeoUaVuvAhn0NCa75i7icv7fSpFMpeLWZ4hm4OqeCqPMnFRl6v
         nN333eOgQAkG/cKmBOPFIY0kovCsepfpvX3RwNHOm7zrjCq9EM/XwOsd1i6j9nFwmQXM
         4AzA==
X-Gm-Message-State: AOAM53350xfpWaKEfRUls3iB7yREzlqsXAcY6a9rRAzLm4J+WHCtINtF
	UJ0qx+1B4Q7QW3SooEFTlia8TpCSxxo=
X-Google-Smtp-Source: ABdhPJxkKjuUk7/2EShnZrtKHL5g0dlImdZ/HalZiArR8vuJH/I60IuVzb5FfEuBUwwF87Ut0bpOOQ==
X-Received: by 2002:a17:907:1623:b0:6df:c9da:a6a8 with SMTP id hb35-20020a170907162300b006dfc9daa6a8mr35316009ejc.303.1649794894947;
        Tue, 12 Apr 2022 13:21:34 -0700 (PDT)
Received: from leap.localnet (host-82-60-208-254.retail.telecomitalia.it. [82.60.208.254])
        by smtp.gmail.com with ESMTPSA id j4-20020a509d44000000b0041cdc7ffda4sm219241edk.59.2022.04.12.13.21.32
        for <outreachy@lists.linux.dev>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 12 Apr 2022 13:21:33 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: outreachy@lists.linux.dev
Subject: Should we Cc this list when submitting patches for subsystems other than "staging"?
Date: Tue, 12 Apr 2022 22:21:31 +0200
Message-ID: <1859502.6tgchFWduM@leap>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hello,

During the current month I have submitted some patches for subsystems other
than drivers/staging. When I sent them I thought that those shouldn't be 
Cc'ed also to this list. Now I'm not anymore sure if I did it correctly.

My question is if all patches sent by the Outreachy's applicants until 
April 22nd should also be sent to this list, even when they are for 
subsystems other than drivers/staging.

Furthermore, one of the above-mentioned patches is strictly related to one
of the three Linux projects, being it a reworking and extension of a large 
section of the documentation of HIGHMEM. Is it sufficient to add that patch 
to the page where we register our contributions in the Outreachy's website? 

I'm also asking because during these days I'm preparing further patches to
other subsystems and I'm going to submit them well before April 22nd. 

Thanks,

Fabio M. De Francesco


