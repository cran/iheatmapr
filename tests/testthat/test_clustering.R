context("clustering")

## note: excluding shapes due to changes in ggdendro that slightly changed the
## x/y coords of the dendrograms

# Col clustering with default option (hclust) ---------------------------------

test_that("can add row clustering with dendrogram to single horizontal heatmap", {
  test_plot <- main_heatmap(a) %>% add_row_clustering()
  expect_iheatmap(test_plot, "row_clustering_hclust_horizontal", exclude = "shapes")
})

test_that("can add row clustering with dendrogram single vertical heatmap",{
  test_plot <- main_heatmap(a, orientation = "vertical") %>% 
    add_row_clustering()
  expect_iheatmap(test_plot, "row_clustering_vertical", "vertical", exclude = "shapes")
})

test_that("can add col clustering with dendrogram to single horizontal heatmap",
          {
  test_plot <- main_heatmap(a) %>% add_col_clustering()
  expect_iheatmap(test_plot, "col_clustering_hclust_horizontal", exclude = "shapes")
})

test_that("can add col clustering with dendrogram  to single vertical heatmap",{
  test_plot <- main_heatmap(a, orientation = "vertical") %>% 
    add_col_clustering()
  expect_iheatmap(test_plot, "col_clustering_hclust_vertical", "vertical", exclude = "shapes")
})


# Col clustering with default option (hclust) plus k ---------------------------

test_that("can add row clustering with dendrogram and k to single horizontal 
          heatmap",{
            test_plot <- main_heatmap(a) %>% add_row_clustering(k = 3)
            expect_iheatmap(test_plot, "row_clustering_hclust_k_horizontal", exclude = "shapes")
          })

test_that("can add row clustering with dendrogram and k to single vertheatmap",{
  test_plot <- main_heatmap(a, orientation = "vertical") %>% 
    add_row_clustering(k = 3)
  expect_iheatmap(test_plot, "row_clustering_k_vertical", "vertical", exclude = "shapes")
})

test_that("can add col clustering with dendrogram and k to single hor heatmap",
          { test_plot <- main_heatmap(a) %>% add_col_clustering(k = 3)
          expect_iheatmap(test_plot, "col_clustering_hclust_k_horizontal", exclude = "shapes")
          })

test_that("can add col clustering with dendrogram and k to single verheatmap",{
  test_plot <- main_heatmap(a, orientation = "vertical") %>% 
    add_col_clustering(k = 3)
  expect_iheatmap(test_plot, "col_clustering_hclust_k_vertical", "vertical", exclude = "shapes")
})

# Col clustering with kmeans  --------------------------------------------------

test_that("can add row clustering with kmeans to single horizontal 
          heatmap",
          { test_plot <- main_heatmap(a) %>% 
            add_row_clustering(method = "kmeans",
                               k = 3)
          expect_iheatmap(test_plot, "row_clustering_kmeans_horizontal", exclude = "shapes")
          })

test_that("can add row clustering with kmeans to single vertical 
          heatmap",
          {
            test_plot <- main_heatmap(a, orientation = "vertical") %>% 
              add_row_clustering(method = "kmeans", k = 3)
            expect_iheatmap(test_plot, "row_clustering_kmeans_vertical", exclude = "shapes",
                            "vertical")
          })

test_that("can add col clustering with kmeans to single horizontal heatmap",
          { test_plot <- main_heatmap(a) %>% 
            add_col_clustering(method = "kmeans",k = 3)
          expect_iheatmap(test_plot, "col_clustering_kmeans_horizontal", exclude = "shapes")
          })

test_that("can add col clustering with kmeans to single vertical heatmap",{
  test_plot <- main_heatmap(a, orientation = "vertical") %>% 
    add_col_clustering(method = "kmeans", k = 3)
  expect_iheatmap(test_plot, "col_clustering_kmeans_vertical", "vertical", exclude = "shapes")
})


