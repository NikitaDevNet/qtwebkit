/*
 * Copyright (C) 2012 Samsung Electronics
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Library General Public
 * License as published by the Free Software Foundation; either
 * version 2 of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Library General Public License for more details.
 *
 * You should have received a copy of the GNU Library General Public License
 * along with this program; see the file COPYING.LIB.  If not, write to
 * the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
 * Boston, MA 02110-1301, USA.
 *
 */

#include "config.h"
#include "ewk_context.h"

#include "WKAPICast.h"
#include "WKRetainPtr.h"
#include "ewk_context_private.h"

using namespace WebKit;

struct _Ewk_Context {
    WKRetainPtr<WKContextRef> context;

    _Ewk_Context(WKContextRef contextRef)
    {
        this->context = contextRef;
    }
};

WKContextRef ewk_context_WKContext_get(const Ewk_Context* ewkContext)
{
    return ewkContext->context.get();
}

Ewk_Context* ewk_context_default_get()
{
    DEFINE_STATIC_LOCAL(Ewk_Context, defaultContext, (WKContextGetSharedProcessContext()));
    return &defaultContext;
}