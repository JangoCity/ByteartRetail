﻿ 

// ******************************************************
// DO NOT CHANGE THE CONTENT OF THIS FILE
// This file was generated by the T4 engine and the 
// contents of this source code will be changed after
// the custom tool was run.
// ******************************************************
using System;
using System.Collections.Generic;
using System.ServiceModel;
using ByteartRetail.Application;
using ByteartRetail.DataObjects;
using ByteartRetail.ServiceContracts;
using ByteartRetail.Infrastructure;

namespace ByteartRetail.Services
{
	public class ProductService : IProductService
	{
		private readonly IProductService productServiceImpl = ServiceLocator.Instance.GetService<IProductService>();
				public ProductDataObjectList CreateProducts(ProductDataObjectList productDataObjects)
		{
			try
			{
				return productServiceImpl.CreateProducts(productDataObjects);
			}
			catch(Exception ex)
			{
				throw new FaultException<FaultData>(FaultData.CreateFromException(ex), FaultData.CreateFaultReason(ex));
			}
		}
		public CategoryDataObjectList CreateCategories(CategoryDataObjectList categoryDataObjects)
		{
			try
			{
				return productServiceImpl.CreateCategories(categoryDataObjects);
			}
			catch(Exception ex)
			{
				throw new FaultException<FaultData>(FaultData.CreateFromException(ex), FaultData.CreateFaultReason(ex));
			}
		}
		public ProductDataObjectList UpdateProducts(ProductDataObjectList productDataObjects)
		{
			try
			{
				return productServiceImpl.UpdateProducts(productDataObjects);
			}
			catch(Exception ex)
			{
				throw new FaultException<FaultData>(FaultData.CreateFromException(ex), FaultData.CreateFaultReason(ex));
			}
		}
		public CategoryDataObjectList UpdateCategories(CategoryDataObjectList categoryDataObjects)
		{
			try
			{
				return productServiceImpl.UpdateCategories(categoryDataObjects);
			}
			catch(Exception ex)
			{
				throw new FaultException<FaultData>(FaultData.CreateFromException(ex), FaultData.CreateFaultReason(ex));
			}
		}
		public void DeleteProducts(IDList productIDs)
		{
			try
			{
				 productServiceImpl.DeleteProducts(productIDs);
			}
			catch(Exception ex)
			{
				throw new FaultException<FaultData>(FaultData.CreateFromException(ex), FaultData.CreateFaultReason(ex));
			}
		}
		public void DeleteCategories(IDList categoryIDs)
		{
			try
			{
				 productServiceImpl.DeleteCategories(categoryIDs);
			}
			catch(Exception ex)
			{
				throw new FaultException<FaultData>(FaultData.CreateFromException(ex), FaultData.CreateFaultReason(ex));
			}
		}
		public CategorizationDataObject CategorizeProduct(Guid productID, Guid categoryID)
		{
			try
			{
				return productServiceImpl.CategorizeProduct(productID, categoryID);
			}
			catch(Exception ex)
			{
				throw new FaultException<FaultData>(FaultData.CreateFromException(ex), FaultData.CreateFaultReason(ex));
			}
		}
		public void UncategorizeProduct(Guid productID)
		{
			try
			{
				 productServiceImpl.UncategorizeProduct(productID);
			}
			catch(Exception ex)
			{
				throw new FaultException<FaultData>(FaultData.CreateFromException(ex), FaultData.CreateFaultReason(ex));
			}
		}
		public CategoryDataObject GetCategoryByID(Guid id, QuerySpec spec)
		{
			try
			{
				return productServiceImpl.GetCategoryByID(id, spec);
			}
			catch(Exception ex)
			{
				throw new FaultException<FaultData>(FaultData.CreateFromException(ex), FaultData.CreateFaultReason(ex));
			}
		}
		public CategoryDataObjectList GetCategories(QuerySpec spec)
		{
			try
			{
				return productServiceImpl.GetCategories(spec);
			}
			catch(Exception ex)
			{
				throw new FaultException<FaultData>(FaultData.CreateFromException(ex), FaultData.CreateFaultReason(ex));
			}
		}
		public ProductDataObject GetProductByID(Guid id, QuerySpec spec)
		{
			try
			{
				return productServiceImpl.GetProductByID(id, spec);
			}
			catch(Exception ex)
			{
				throw new FaultException<FaultData>(FaultData.CreateFromException(ex), FaultData.CreateFaultReason(ex));
			}
		}
		public ProductDataObjectList GetProducts(QuerySpec spec)
		{
			try
			{
				return productServiceImpl.GetProducts(spec);
			}
			catch(Exception ex)
			{
				throw new FaultException<FaultData>(FaultData.CreateFromException(ex), FaultData.CreateFaultReason(ex));
			}
		}
		public ProductDataObjectListWithPagination GetProductsWithPagination(Pagination pagination)
		{
			try
			{
				return productServiceImpl.GetProductsWithPagination(pagination);
			}
			catch(Exception ex)
			{
				throw new FaultException<FaultData>(FaultData.CreateFromException(ex), FaultData.CreateFaultReason(ex));
			}
		}
		public ProductDataObjectList GetProductsForCategory(Guid categoryID)
		{
			try
			{
				return productServiceImpl.GetProductsForCategory(categoryID);
			}
			catch(Exception ex)
			{
				throw new FaultException<FaultData>(FaultData.CreateFromException(ex), FaultData.CreateFaultReason(ex));
			}
		}
		public ProductDataObjectListWithPagination GetProductsForCategoryWithPagination(Guid categoryID, Pagination pagination)
		{
			try
			{
				return productServiceImpl.GetProductsForCategoryWithPagination(categoryID, pagination);
			}
			catch(Exception ex)
			{
				throw new FaultException<FaultData>(FaultData.CreateFromException(ex), FaultData.CreateFaultReason(ex));
			}
		}
		public ProductDataObjectList GetFeaturedProducts(Int32 count)
		{
			try
			{
				return productServiceImpl.GetFeaturedProducts(count);
			}
			catch(Exception ex)
			{
				throw new FaultException<FaultData>(FaultData.CreateFromException(ex), FaultData.CreateFaultReason(ex));
			}
		}
	}
}