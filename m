Received: from mail-qt1-f176.google.com (mail-qt1-f176.google.com [209.85.160.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D65ED5C84
	for <outreachy@lists.linux.dev>; Mon, 10 Oct 2022 19:53:07 +0000 (UTC)
Received: by mail-qt1-f176.google.com with SMTP id x8so590290qtv.9
        for <outreachy@lists.linux.dev>; Mon, 10 Oct 2022 12:53:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ncf.edu; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=j0+e/0fIC+6B4WlMQkn3s5AaRQWW3tIgEmVUBMkfFa8=;
        b=Do1kVKxlnA+M1HLr9ljjU+c21PglxoQjMmbB9/Y8JCOmRCSXijd0BhYJ/TXl8DVGke
         WkwAsaXPJ5ZRYQo3RZBDXNxw8eoCEoDd6lBmPMb0N4+Cp69lloixYj8angPBiCQvwRgf
         jXdlc5EsdJgFracKZS2jDErYeIsbRnqS95P7tcg806TS/JB2gXP+2wdkn0tvfbDCZuox
         2Y9j53YHAYr0xLBBV2m55P32A8KhfVVXJxAJwMUdzEphAduRa6X8pZdtCppJgaX4Sj29
         UJ5ts8vjRigz5aviuAt8CJNd0mfwK0qc7X43GcyFf3wxBTo5/kfi9Ld2QsjcUSzFie97
         yICQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=j0+e/0fIC+6B4WlMQkn3s5AaRQWW3tIgEmVUBMkfFa8=;
        b=5/w50938Rsh5PSetNtvkbzGPtbdmYBBtnqUBMtkMbv7Ky/APGaq5UYd0wz0I4+eP/J
         xZhkvBNbmHW95cpMJQpZD/q9h5G3ysCJp+4sehSxvq42TilGWcP+gmfXJusEgPc2bFTX
         akagdUucff3yPKZcsMCt3CqkL0kHSgPXyyRYagGaFFcN6gTesT810qPEDtDXqSTz2dTN
         Qi3aCPNeHW+DlwdQrXVIBUpdhs0GvzcPO9Nq1VvuCfc0Edj+bNxTaMeuEsW2mgqJqe0z
         CVyGHmA6KWASyeVE3hylUzNMCf29MfjZc0B+Rgd7VzVMDyoCekl2Yn00n/WLiL2pTMX7
         QALA==
X-Gm-Message-State: ACrzQf0JU3UNzkg9hUznuoiHs/3Z+mJF1dHXUaTt+IPpEux1HAN/SIpi
	3dgjn/ssGXqtQSlNLOANumKDPPS0kObPDxdkioKA+fLC6orgmzvrnwWHmpRHRYC+7T+FVJd8NO+
	d0cv4JRkMqxgcouXk6n/hV/1a7d4ZnovcZHdvat1Z2eai3vWIyDL2dn5dzbLSghEgOijhLI4qOu
	g+b9U=
X-Google-Smtp-Source: AMsMyM6oaEE5xf3dtrkZR/rQv0JzI2PNTx+9PR10iIoNLoKB50dVTu+wEHwf9x+o54/PUqbHeFjisA==
X-Received: by 2002:a05:622a:1304:b0:35c:b8f9:b8ac with SMTP id v4-20020a05622a130400b0035cb8f9b8acmr16466814qtk.335.1665431586451;
        Mon, 10 Oct 2022 12:53:06 -0700 (PDT)
Received: from zeda.home ([47.195.251.56])
        by smtp.gmail.com with ESMTPSA id y15-20020a05620a25cf00b006bbf85cad0fsm11177586qko.20.2022.10.10.12.53.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 10 Oct 2022 12:53:06 -0700 (PDT)
From: Hunter Chasens <hunter.chasens18@ncf.edu>
To: outreachy@lists.linux.dev
Cc: Hunter Chasens <hunter.chasens18@ncf.edu>
Subject: [PATCH v2 0/2] Staging: greybus: Fixed whitespace/syntax style issues
Date: Mon, 10 Oct 2022 15:51:57 -0400
Message-Id: <cover.1665430030.git.hunter.chasens18@ncf.edu>
X-Mailer: git-send-email 2.37.3
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

These two patches address some Errors, Warnings, and Checks reported by `./scripts/checkpatch.pl`

v1 -> v2
Separates the patch into a small patchset with the delimitation of syntactical styling vs whitespace styling. 
(I plan on sending to the maintainers if Outreach thinks this is an appropriate patch.)

Hunter Chasens (2):
  Staging: greybus: Fixed whitespace style issues
  Staging: greybus: Removed redundent 'int'

 .../Documentation/firmware/authenticate.c     |  4 +--
 .../greybus/Documentation/firmware/firmware.c | 34 +++++++++----------
 drivers/staging/greybus/arche-platform.c      |  2 +-
 .../staging/greybus/greybus_authentication.h  |  1 -
 drivers/staging/greybus/loopback.c            |  3 +-
 drivers/staging/greybus/tools/loopback_test.c | 16 +--------
 6 files changed, 22 insertions(+), 38 deletions(-)

-- 
2.37.3

