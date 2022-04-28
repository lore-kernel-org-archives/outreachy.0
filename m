Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B933C138F
	for <outreachy@lists.linux.dev>; Thu, 28 Apr 2022 21:25:01 +0000 (UTC)
Received: by mail-ed1-f47.google.com with SMTP id z99so6947550ede.5
        for <outreachy@lists.linux.dev>; Thu, 28 Apr 2022 14:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LPQ3E9afTjlW5TilMvGAGVvq6Wv6p0MGgQrQX5vBToU=;
        b=Yp8Nn7etXHHyxHUU99zuitzC6s9xSi6HYAm4gUmHCRzWvw8tr6ZFQANoMPkfU96FJp
         79OtP6j5l0rTPnZnjqVrsMOYIWP09zmWBgRIzVXN2FK/y+BXhFJxFmPnrjMR4I+tyzwS
         TVEOiw3BQiqW8STaWzUDWyu5VjbAgjX6AOBiOplCCLdwhhcVafOP9Iop/fp2+p1pYL7t
         CkV0hno+pYyhrpXdgL34wu/fuxKxxxKprAmHe/qHhPeElQB6JZdJDFtEamY0N32vNs74
         n38W1eMnTHZUf1Dai2Tewk/ZtY7goElQioJ08iIYrOxtqASdELpdMJsX2dbYDWT0wuR4
         2OTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LPQ3E9afTjlW5TilMvGAGVvq6Wv6p0MGgQrQX5vBToU=;
        b=m3hOGTTZwUwPpeuFUyg5SL7f1eTytGc1GC1++BIc/TE82FFML9b05VkW2Iwh/wzQbC
         p2utO1NZowjLTQEvQCbqcSh9Oo9BgcjiwUfI0LkTVrBICsPw1lwgfnI3Nknqc4CQnE4R
         +WpZr1snCJ9HnaiApUfsy8V6hCn0A1+tfH+swX/DNius0Xp2Nz4A6diyZHC8WoD7N1f2
         ThTd2/xALhkiVei13n/g3SZGCunRDB2LihXQemt6NbHqgM2jE2ir9AIIlB0oItmRwe7L
         f8eDslCZjSRB5FNO5cX7rO+WHhSeOqsz7ogr/Vjp8obOj29qUMGuU7RO+kF1OpRFd6Kh
         hnig==
X-Gm-Message-State: AOAM533PEl0cwqATAv71SLh3+xAIdwhm0VKV93yfVp1J/Pa4wvcd/5Ic
	WisIFlqfFpoqWC0a0nzzqEI=
X-Google-Smtp-Source: ABdhPJxVfvZSIi6nZEKqLikrHqKrvrPVCUOyQoemYyu0IzSYp9ZETBQspl0NWkmxbfl1F1T7bv95tg==
X-Received: by 2002:a05:6402:5247:b0:426:27c4:97d0 with SMTP id t7-20020a056402524700b0042627c497d0mr5827312edd.65.1651181099850;
        Thu, 28 Apr 2022 14:24:59 -0700 (PDT)
Received: from localhost.localdomain (host-79-50-86-254.retail.telecomitalia.it. [79.50.86.254])
        by smtp.gmail.com with ESMTPSA id ze12-20020a170906ef8c00b006f3ef214e68sm37147ejb.206.2022.04.28.14.24.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 28 Apr 2022 14:24:58 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Ira Weiny <ira.weiny@intel.com>,
	Andrew Morton <akpm@linux-foundation.org>,
	Catalin Marinas <catalin.marinas@arm.com>,
	"Matthew Wilcox (Oracle)" <willy@infradead.org>,
	Will Deacon <will@kernel.org>,
	Peter Collingbourne <pcc@google.com>,
	Vlastimil Babka <vbabka@suse.cz>,
	Sebastian Andrzej Siewior <bigeasy@linutronix.de>,
	linux-kernel@vger.kernel.org,
	linux-doc@vger.kernel.org,
	outreachy@lists.linux.dev
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Subject: [PATCH v4 0/4] Extend and reorganize Highmem's documentation
Date: Thu, 28 Apr 2022 23:24:51 +0200
Message-Id: <20220428212455.892-1-fmdefrancesco@gmail.com>
X-Mailer: git-send-email 2.34.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

This series has the purpose to extend and reorganize Highmem's
documentation.

This is a work in progress because some information should still be moved
from highmem.rst to highmem.h and highmem-internal.h. Specifically I'm
talking about moving the "how to" information to the relevant headers, as
it as been suggested by Ira Weiny (Intel).

Also, this is a work in progress because some kdocs in highmem.h and
highmem-internal.h should be improved.

However, I think (and hope that my thoughts are also shared by Maintainers
and Reviewers) that this series constitues a sensible step forward
improving Highmem's documentation, despite some important issues are not
yet addressed.

Changes from v1 to v2:

        1/4 - Fix typos (Mike Rapoport); re-write the description of @page
              because the original was wrong (Ira Weiny); add Ira's and
              Mike's tags in the commit message.
        2/4 - Add Ira's and Mike's tags in the commit message.
        3/4 - Rework the subject to better summarize what this patch
              changes; merge the section which was removed from highmem.rst
              with the kdocs of highmem.h (suggested by Ira Weiny); add
              Ira's tag in the commit message.
        4/4 - Reformulate a sentence that was incomprehensible due to my
              own mistakes in copying and pasting the text of another
              paragraph (problem noted by Ira Weiny); refer to the kdocs
              of kmap_local_page () to show how nested mappings should be
              handled; fix grammar error; add Ira's tag in the commit
              message.

Changes from v2 to v3:

        1/4 - Add a deprecation notice to kunmap_atomic() for consistency
              with the same notice in kmap_atomic() (Sebastian Andrzej
              Siewior); shorten subject and extend commit message.
        2/4 - No changes.
        3/4 - No changes.
        4/4 - Correct a technical inaccuracy about preemption disabling /
              re-enabling in kmap_atomic() / kunmap_atomic() (Sebastian
              Andrzej Siewior).

Changes from v3 to v4:

	1/4 - Correct some techinal inaccuracies about the side effects
	      of calling kmap_atomic() and kmap_local_page() (Sebastian
	      Andrzej Siewior); drop "Acked-by:" and "Reviewed-by:" tags
	      because relevant parts of this patch have changed.
	2/4 - No changes.
	3/4 - No changes.
	4/4 - Shorten a couple of paragraphs by removing redundant
	      information (Sebastian Andrzej Siewior).

Fabio M. De Francesco (4):
  mm/highmem: Fix kernel-doc warnings in highmem*.h
  Documentation/vm: Include kdocs from highmem*.h into highmem.rst
  Documentation/vm: Move "Using kmap-atomic" from highmem.rst to
    highmem.h
  Documentation/vm: Rework "Temporary Virtual Mappings" section

 Documentation/vm/highmem.rst     | 100 ++++++++++++++++++-------------
 include/linux/highmem-internal.h |  18 +++++-
 include/linux/highmem.h          |  51 ++++++++++++----
 3 files changed, 113 insertions(+), 56 deletions(-)

-- 
2.34.1

