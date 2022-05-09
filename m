Received: from us-smtp-delivery-124.mimecast.com (us-smtp-delivery-124.mimecast.com [170.10.129.124])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A21997E
	for <outreachy@lists.linux.dev>; Mon,  9 May 2022 13:55:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1652104556;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding;
	bh=qwXI3awolM0E/WneY0cERY2F2VveEqgw9mfifWvrRjg=;
	b=MXbBt/3w9zW4ktkHPmMwAtwpE9iMK97DXKLxkHMcTQGjGmrZ4PpEkehgjupXFlbz2rCnVz
	GvZVSXeb3w/Xn2+gvCdA/GTLmom8w41OyfX4/yAqvWPwHJK2viBISJJ2eamkIoq0Zo3x0t
	2bzr6MLHhY3iRZcoBxPC+VILcKMnbIo=
Received: from mail-lf1-f69.google.com (mail-lf1-f69.google.com
 [209.85.167.69]) by relay.mimecast.com with ESMTP with STARTTLS
 (version=TLSv1.2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 us-mta-515-toc77RHKNiygLFdYn9CKpA-1; Mon, 09 May 2022 09:55:55 -0400
X-MC-Unique: toc77RHKNiygLFdYn9CKpA-1
Received: by mail-lf1-f69.google.com with SMTP id bp17-20020a056512159100b00472631eb445so5849838lfb.13
        for <outreachy@lists.linux.dev>; Mon, 09 May 2022 06:55:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:organization
         :mime-version:content-transfer-encoding;
        bh=qwXI3awolM0E/WneY0cERY2F2VveEqgw9mfifWvrRjg=;
        b=JL3B0A3voDjgonJt6nswQZ/1ryv+gaPhMeirlONqOHioTHSoGRkbZ7p+NElfR5VCua
         guUrgevspXCYwhX9246Z9MHuWwzfT+QA4JaGy5tUw6O+7e9j+PzhA3rQHQs2OW8DWsPy
         NAumW0AH7JqxKFwxrshGDj5UHMbr1SeiV7Y2Ro03n3t/4Nf5599JUNZCWyDf4YpjmTuZ
         slSt74vy8XU3w9TXSM0xEe20gmgY3Du+klTRUSNDq0CexAHvXvYR79+HLJyPeK/fzHo3
         UpTGkVJYrpBgkYZMCg97xXdztc85Zm+eQLqlAl1Liwl9elbb/Fc23jskorKYxU8ZUN+e
         FwuA==
X-Gm-Message-State: AOAM533KzsJ0QY7anXXIGGy/L9Uwq3tF11yVEV4kU01L7Q8VB0utaVLC
	k4N6nYbuNvtOirmA/cosLkoxHh1shX35/WiwRRAlzPqNvZajtsV9muUXR4UC5Sp6KkY9CEVm+lh
	6dFleNNJmqApxsZ3MGrMJ
X-Received: by 2002:a2e:8885:0:b0:24f:16ba:c931 with SMTP id k5-20020a2e8885000000b0024f16bac931mr10702708lji.394.1652104553636;
        Mon, 09 May 2022 06:55:53 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyHJU3tIgFXicYCJOc0KzkSQ+t0+nNltpxPDVcgZbWXzzgTc1DuegzD3jBUpkxrWh/FKBGXRg==
X-Received: by 2002:a2e:8885:0:b0:24f:16ba:c931 with SMTP id k5-20020a2e8885000000b0024f16bac931mr10702703lji.394.1652104553422;
        Mon, 09 May 2022 06:55:53 -0700 (PDT)
Received: from maya.cloud.tilaa.com (maya.cloud.tilaa.com. [164.138.29.33])
        by smtp.gmail.com with ESMTPSA id o14-20020a05651c050e00b0024f3d1daeacsm1814545ljp.52.2022.05.09.06.55.52
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 May 2022 06:55:53 -0700 (PDT)
Date: Mon, 9 May 2022 15:55:50 +0200
From: Stefano Brivio <sbrivio@redhat.com>
To: outreachy@lists.linux.dev
Cc: Sevinj Aghayeva <sevinj.aghayeva@gmail.com>, Roopa Prabhu
 <roopa@nvidia.com>
Subject: using mbuto to run kselftests
Message-ID: <20220509155550.05384a3c@elisabeth>
Organization: Red Hat
X-Mailer: Claws Mail 4.0.0 (GTK+ 3.24.33; x86_64-pc-linux-gnu)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Authentication-Results: relay.mimecast.com;
	auth=pass smtp.auth=CUSA124A263 smtp.mailfrom=sbrivio@redhat.com
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hi,

I thought this might be of interest for Outreachy applicants inclined
to kernel development. Arguably, it might have been more useful during
the contribution phase, but it took a bit longer to get it in shape. :)

Thanks to a substantial contribution by Sevinj, mbuto (a shell script
building initramfs images that can be loaded by qemu) can now be used to
conveniently run kernel selftests in virtual machines, for example
after making some changes to a kernel tree. The website at:

	https://mbuto.sh/

now shows examples with kselftests and links to documentation.

Comments, bug reports and patches all welcome!

-- 
Stefano

